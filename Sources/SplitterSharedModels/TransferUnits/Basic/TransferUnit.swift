import Foundation
import MultitoolTree

public typealias TransferUnit = Tree<Transfer, TransferGroup>

public extension TransferUnit {
  var info: Info {
    switch self {
    case .leaf(let transfer): return transfer.info
    case .node(let transferGroup): return transferGroup.info
    }
  }

  var amounts: [Amount?] {
    switch self {
    case .leaf(let transfer): return [transfer.amount]
		case .node(let transferUnitGroup): return transferUnitGroup.transferUnits.amounts
    }
  }

  var summarizedAmounts: [Amount] {
    switch self {
    case .leaf(let transfer): return [transfer.amount].compactMap { $0 }
		case .node(let transferUnitGroup): return transferUnitGroup.transferUnits.amountsSum
    }
  }

  var creditors: [User.Compact?] {
    switch self {
    case .leaf(let transfer): return [transfer.creditor]
		case .node(let transferUnitGroup): return transferUnitGroup.transferUnits.creditors
    }
  }

  var borrowers: [User.Compact?] {
    switch self {
    case .leaf(let transfer): return [transfer.borrower]
		case .node(let transferUnitGroup): return transferUnitGroup.transferUnits.borrowers
    }
  }
}

public extension TransferUnit {
  var new: New {
    switch self {
    case .leaf(let transfer): return New.leaf(transfer.new)
    case .node(let transferGroup): return New.node(transferGroup.new)
    }
  }

  var update: Update {
    switch self {
    case .leaf(let transfer): return Update.leaf(transfer.update)
    case .node(let transferGroup): return Update.node(transferGroup.update)
    }
  }
}

public extension [TransferUnit] {
	var amounts: [Amount] {
		flatMap { $0.amounts }.compactMap { $0 }
	}

	var amountsSum: [Amount] {
		var dictionary = [Currency: Double]()
		amounts
			.compactMap { $0 }
			.forEach { dictionary[$0.currency, default: 0] += $0.value }

		let amountsSum = dictionary.map { currency, value in Amount(value: value, currency: currency) }
		return amountsSum
	}

	var singleCurrency: Currency? {
		amountsSum.count == 1 ? amountsSum.first?.currency : nil
	}

	var isSingleCurrency: Bool {
		singleCurrency != nil
	}

	var creditors: [User.Compact] {
		flatMap { $0.creditors }.compactMap { $0 }
	}

	var uniqueCreditors: Set<User.Compact> {
		.init(creditors)
	}

	var singleCreditor: User.Compact? {
		uniqueCreditors.count == 1 ? uniqueCreditors.first : nil
	}

	var isSingleCreditor: Bool {
		singleCreditor != nil
	}

	var borrowers: [User.Compact] {
		flatMap { $0.borrowers }.compactMap { $0 }
	}

	var uniqueBorrowers: Set<User.Compact> {
		.init(borrowers)
	}

	var hasDuplicatedBorrowers: Bool {
		uniqueBorrowers.count != borrowers.count
	}

	var hasNestedGroups: Bool {
		contains { $0.nodeValue != nil }
	}
}
