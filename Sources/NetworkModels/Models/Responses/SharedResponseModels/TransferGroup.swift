import SharedModels

extension SharedResponseModels {
	public struct TransferGroup: ResponseNetworkModel, Equatable {
		public let transferGroupContainer: SharedModels.TransferGroup.Container

		public init (
			transferGroupContainer: SharedModels.TransferGroup.Container
		) {
			self.transferGroupContainer = transferGroupContainer
		}
	}
}
