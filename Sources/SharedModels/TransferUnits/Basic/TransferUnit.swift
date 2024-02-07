import Foundation
import Multitool

public typealias TransferUnit = GeneralTree<TransferUnitValue.Default>

public extension TransferUnit {
	init (transfer: Transfer) {
		self.init(value: .transfer(transfer))
	}

	init (transferGroup: TransferGroup, transferUnits: [TransferUnit]) {
		self.init(value: .transferGroup(transferGroup), nodes: transferUnits)
	}

	init (transferSplitGroup: TransferSplitGroup) {
		self.init(value: .transferSplitGroup(transferSplitGroup))
	}
}

public extension TransferUnit where Value: Identifiable {
	@discardableResult
	mutating func appendIfGroup (
		transferUnit: TransferUnit,
		toTransferGroup transferGroupId: UUID
	) -> Bool {
		switch value {
		case .transfer:
			return false

		case .transferGroup(let transferGroup):
			if transferGroup.id == transferGroupId {
				nodes.append(transferUnit)
				return true
			} else {
				for nodeIndex in nodes.indices {
					let isSuccess = nodes[nodeIndex].appendIfGroup(transferUnit: transferUnit, toTransferGroup: transferGroupId)
					guard !isSuccess else { return true }
				}

				return false
			}

		case .transferSplitGroup:
			return false
		}
	}

	mutating func removeAll (withId id: UUID) {
		nodes.removeAll {
			$0.value.id == id
		}

		nodes.removeAll(withId: id)
	}
}

public extension Array where Element == TransferUnit {
	mutating func removeAll (withId id: UUID) {
		for index in indices {
			self[index].removeAll(withId: id)
		}
	}
}

public extension TransferUnit {
	var id: UUID {
		switch self.value {
		case .transfer(let transfer): transfer.id
		case .transferGroup(let transferGroup): transferGroup.id
		case .transferSplitGroup(let transferSplitGroup): transferSplitGroup.id
		}
	}

	var info: TransferUnit.Info {
		switch self.value {
		case .transfer(let transfer): transfer.info
		case .transferGroup(let transferGroup): transferGroup.info
		case .transferSplitGroup(let transferSplitGroup): transferSplitGroup.info
		}
	}

  var amounts: [Amount?] {
    switch self.value {
    case .transfer(let transfer): [transfer.amount]
		case .transferGroup: nodes.amounts
		case .transferSplitGroup(let transferSplitGroup): transferSplitGroup.borrowerAmounts.values.map { .init(value: $0, currency: transferSplitGroup.currency) }
    }
  }

  var summarizedAmounts: [Amount] {
    switch self.value {
    case .transfer(let transfer): [transfer.amount].compactMap { $0 }
		case .transferGroup: nodes.amountsSum
		case .transferSplitGroup(let transferSplitGroup): [transferSplitGroup.amountSum]
    }
  }

  var creditors: [User.Compact?] {
    switch self.value {
    case .transfer(let transfer): [transfer.creditor]
		case .transferGroup: nodes.creditors
		case .transferSplitGroup(let transferSplitGroup): [transferSplitGroup.creditor]
    }
  }

  var borrowers: [User.Compact?] {
    switch self.value {
    case .transfer(let transfer): [transfer.borrower]
		case .transferGroup: nodes.borrowers
		case .transferSplitGroup(let transferSplitGroup): Array(transferSplitGroup.borrowerAmounts.keys)
    }
  }
}

public extension TransferUnit {
  var new: New {
		.init(
			value: {
				switch self.value {
				case .transfer(let transfer): .transfer(transfer.new)
				case .transferGroup(let transferGroup): .transferGroup(transferGroup.new)
				case .transferSplitGroup(let transferSplitGroup): .transferSplitGroup(transferSplitGroup.new)
				}
			}(),
			nodes: nodes.map(\.new)
		)
  }

  var update: Update {
		.init(
			value: {
				switch self.value {
				case .transfer(let transfer): .transfer(transfer.update)
				case .transferGroup(let transferGroup): .transferGroup(transferGroup.update)
				case .transferSplitGroup(let transferSplitGroup): .transferSplitGroup(transferSplitGroup.update)
				}
			}(),
			nodes: nodes.map(\.update)
		)
  }
}
