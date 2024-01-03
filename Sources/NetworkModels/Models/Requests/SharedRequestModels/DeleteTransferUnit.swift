import Foundation

extension SharedRequestModels {
	public struct DeleteTransferUnit: RequestNetworkModel {
		public let transferUnitId: UUID

		public init (transferUnitId: UUID) {
			self.transferUnitId = transferUnitId
		}
	}
}
