import Foundation
import Multitool

public typealias TransferUnit = GeneralTree<TransferUnitValue.Default>

public extension TransferUnit {
  var info: Info {
		switch self.value {
    case .transfer(let transfer): transfer.info
    case .transferGroup(let transferGroup): transferGroup.info
    }
  }

  var amounts: [Amount?] {
    switch self.value {
    case .transfer(let transfer): [transfer.amount]
		case .transferGroup: nodes.amounts
    }
  }

  var summarizedAmounts: [Amount] {
    switch self.value {
    case .transfer(let transfer): [transfer.amount].compactMap { $0 }
		case .transferGroup: nodes.amountsSum
    }
  }

  var creditors: [User.Compact?] {
    switch self.value {
    case .transfer(let transfer): [transfer.creditor]
		case .transferGroup: nodes.creditors
    }
  }

  var borrowers: [User.Compact?] {
    switch self.value {
    case .transfer(let transfer): [transfer.borrower]
		case .transferGroup: nodes.borrowers
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
				}
			}(),
			nodes: nodes.map(\.update)
		)
  }
}
