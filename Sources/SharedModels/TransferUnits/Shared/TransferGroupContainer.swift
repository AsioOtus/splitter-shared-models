public struct TransferGroupContainer<TG, TU> {
	public let transferGroup: TG
	public let transferUnits: [TU]

	public init (
		transferGroup: TG,
		transferUnits: [TU]
	) {
		self.transferGroup = transferGroup
		self.transferUnits = transferUnits
	}
}
