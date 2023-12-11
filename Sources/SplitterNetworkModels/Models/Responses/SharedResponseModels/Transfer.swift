import SplitterSharedModels

extension SharedResponseModels {
	public struct Transfer: ResponseNetworkModel, Equatable {
		public let transfer: SplitterSharedModels.Transfer

		public init (transfer: SplitterSharedModels.Transfer) {
			self.transfer = transfer
		}
	}
}
