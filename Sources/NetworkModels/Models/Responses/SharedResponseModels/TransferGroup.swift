import SharedModels

extension SharedResponseModels {
	public struct TransferGroup: ResponseNetworkModel, Equatable {
		public let transferGroup: SharedModels.TransferGroup

		public init (transferGroup: SharedModels.TransferGroup) {
			self.transferGroup = transferGroup
		}
	}
}
