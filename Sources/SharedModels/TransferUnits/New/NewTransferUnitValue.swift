public enum NewTransferUnitValue {
	case transfer(Transfer.New)
	case transferGroup(TransferGroup.New)
	case transferSplitGroup(TransferGroup.NewSplit)

	public var isTransfer: Bool {
		if case .transfer = self { true }
		else { false }
	}

	public var isTransferGroup: Bool {
		if case .transferGroup = self { true }
		else { false }
	}

	public var isTransferSplitGroup: Bool {
		if case .transferSplitGroup = self { true }
		else { false }
	}

	public var transferValue: Transfer.New? {
		if case .transfer(let value) = self { return value }
		else { return nil }
	}

	public var transferGroupValue: TransferGroup.New? {
		if case .transferGroup(let value) = self { return value }
		else { return nil }
	}

	public var transferSplitGroupValue: TransferGroup.New? {
		if case .transferGroup(let value) = self { return value }
		else { return nil }
	}
}

extension NewTransferUnitValue: Codable { }
