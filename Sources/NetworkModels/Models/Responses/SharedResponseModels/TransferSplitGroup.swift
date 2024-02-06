import SharedModels

extension SharedResponseModels {
	public struct TransferGroup: ResponseNetworkModel, Equatable {
		public let transferSplitGroup: SharedModels.TransferSplitGroup

		public init (transferSplitGroup: SharedModels.TransferSplitGroup) {
			self.transferSplitGroup = transferSplitGroup
		}
	}
}
