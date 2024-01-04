import SharedModels

extension SharedResponseModels {
	public struct TransferUnitInfo: ResponseNetworkModel, Equatable {
		public let transferInfo: SharedModels.TransferUnit.Info

		public init (transferInfo: SharedModels.TransferUnit.Info) {
			self.transferInfo = transferInfo
		}
	}
}
