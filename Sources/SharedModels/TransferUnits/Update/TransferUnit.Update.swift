import Multitool

public extension TransferUnit {
	typealias Update = GeneralTree<TransferUnitValue.Update>
}

public extension TransferUnit.Update {
  var info: TransferUnit.Info {
		switch self.value {
    case .transfer(let transfer): return transfer.info
    case .transferGroup(let transferGroup): return transferGroup.info
    }
  }
}
