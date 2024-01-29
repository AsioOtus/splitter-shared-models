public enum TransferUnitValue<T, TG> {
	case transfer(T)
	case transferGroup(TG)

	public var isTransfer: Bool {
		if case .transfer = self { true }
		else { false }
	}

	public var isTransferGroup: Bool {
		if case .transferGroup = self { true }
		else { false }
	}

	public var transferValue: T? {
		if case .transfer(let value) = self { return value }
		else { return nil }
	}

	public var transferGroupValue: TG? {
		if case .transferGroup(let value) = self { return value }
		else { return nil }
	}
}

extension TransferUnitValue: Codable where T: Codable, TG: Codable { }
