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
		case .node(let transferUnitGroup): return transferUnitGroup.amounts
    }
  }

  var summarizedAmounts: [Amount] {
    switch self {
    case .leaf(let transfer): return [transfer.amount].compactMap { $0 }
		case .node(let transferUnitGroup): return transferUnitGroup.amountsSum
    }
  }

  var creditors: [User.Compact?] {
    switch self {
    case .leaf(let transfer): return [transfer.creditor]
		case .node(let transferUnitGroup): return transferUnitGroup.creditors
    }
  }

  var borrowers: [User.Compact?] {
    switch self {
    case .leaf(let transfer): return [transfer.borrower]
		case .node(let transferUnitGroup): return transferUnitGroup.borrowers
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
