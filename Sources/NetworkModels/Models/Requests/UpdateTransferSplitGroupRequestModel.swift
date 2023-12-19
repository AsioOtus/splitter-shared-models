import Foundation
import SharedModels

public struct UpdateTransferSplitGroupRequestModel: RequestNetworkModel {
	public let transferSplitGroup: TransferGroup.UpdateSplit

	public init (
		transferSplitGroup: TransferGroup.UpdateSplit
	) {
		self.transferSplitGroup = transferSplitGroup
	}
}
