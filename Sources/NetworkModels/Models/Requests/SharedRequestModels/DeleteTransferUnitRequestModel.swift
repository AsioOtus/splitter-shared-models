import Foundation

extension SharedRequestModels {
	public struct DeleteTransferUnitRequestModel: RequestNetworkModel {
		public let transferUnitId: UUID

		public init (transferUnitId: UUID) {
			self.transferUnitId = transferUnitId
		}
	}
}
