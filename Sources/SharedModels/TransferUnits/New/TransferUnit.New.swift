import Multitool

public extension TransferUnit {
	typealias New = GeneralTree<TransferUnitValue.New>
}

public extension TransferUnit.New {
  var info: TransferUnit.Info {
		switch self.value {
    case .transfer(let transfer): return transfer.info
    case .transferGroup(let transferGroup): return transferGroup.info
    }
  }
}
