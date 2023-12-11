import SplitterSharedModels

extension SharedResponseModels {
	public struct TransferGroup: ResponseNetworkModel, Equatable {
		public let transferGroup: SplitterSharedModels.TransferGroup

		public init (transferGroup: SplitterSharedModels.TransferGroup) {
			self.transferGroup = transferGroup
		}
	}
}
