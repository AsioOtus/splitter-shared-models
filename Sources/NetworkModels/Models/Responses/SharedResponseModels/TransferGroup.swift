import SharedModels

extension SharedResponseModels {
	public struct TransferGroup: ResponseNetworkModel, Equatable {
		public let transferGroup: SharedModels.TransferGroup
		public let transferUnits: SharedModels.TransferUnit

		public init (
			transferGroup: SharedModels.TransferGroup,
			transferUnits: SharedModels.TransferUnit
		) {
			self.transferGroup = transferGroup
			self.transferUnits = transferUnits
		}
	}
}
