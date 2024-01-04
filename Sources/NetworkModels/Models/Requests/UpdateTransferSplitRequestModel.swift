import Foundation
import SharedModels

public struct UpdateTransferSplitRequestModel: RequestNetworkModel {
	public let transferSplit: Transfer.UpdateSplit

	public init (
		transferSplit: Transfer.UpdateSplit
	) {
		self.transferSplit = transferSplit
	}
}
