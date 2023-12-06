import MultitoolTree

public extension TransferUnit {
	typealias Local = Tree<Transfer.Local, TransferGroup.Local>
}

public extension TransferUnit.Local {
	var info: TransferUnit.Info {
		switch self {
		case .leaf(let transfer): return transfer.info
		case .node(let transferGroup): return transferGroup.info
		}
	}
}
