import MultitoolTree

public extension TransferUnit {
  typealias New = Tree<Transfer.New, TransferGroup.New>
}

public extension TransferUnit.New {
  var info: TransferUnit.Info {
    switch self {
    case .leaf(let transfer): return transfer.info
    case .node(let transferGroup): return transferGroup.info
    }
  }
}
