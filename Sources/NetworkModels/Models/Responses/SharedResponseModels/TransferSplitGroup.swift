import SharedModels

extension SharedResponseModels {
	public struct TransferSplitGroup: ResponseNetworkModel, Equatable {
		public let transferSplitGroup: SharedModels.TransferSplitGroup

		public init (transferSplitGroup: SharedModels.TransferSplitGroup) {
			self.transferSplitGroup = transferSplitGroup
		}
	}
}
