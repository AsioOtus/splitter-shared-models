import Multitool

public extension TransferUnit {
	typealias New = GeneralTree<NewTransferUnitValue>
}

public extension TransferUnit.New {
  var info: TransferUnit.Info {
		switch self.value {
    case .transfer(let transfer): transfer.info
    case .transferGroup(let transferGroup): transferGroup.info
		case .transferSplitGroup(let transferSplitGroup): transferSplitGroup.info
    }
  }
}
