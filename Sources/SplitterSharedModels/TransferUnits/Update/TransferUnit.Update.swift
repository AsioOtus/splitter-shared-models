import MultitoolTree

public extension TransferUnit {
  typealias Update = Tree<Transfer.Update, TransferGroup.Update>
}

public extension TransferUnit.Update {
  var info: TransferUnit.Info {
    switch self {
    case .leaf(let transfer): return transfer.info
    case .node(let transferGroup): return transferGroup.info
    }
  }
}
