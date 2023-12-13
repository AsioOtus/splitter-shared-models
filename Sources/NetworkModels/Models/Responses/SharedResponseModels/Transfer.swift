import SharedModels

extension SharedResponseModels {
	public struct Transfer: ResponseNetworkModel, Equatable {
		public let transfer: SharedModels.Transfer

		public init (transfer: SharedModels.Transfer) {
			self.transfer = transfer
		}
	}
}
