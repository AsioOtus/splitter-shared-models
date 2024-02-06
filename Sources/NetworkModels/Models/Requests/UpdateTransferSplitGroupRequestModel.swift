import Foundation
import SharedModels

public struct UpdateTransferSplitGroupRequestModel: RequestNetworkModel {
	public let transferSplitGroup: TransferSplitGroup.Update

	public init (
		transferSplitGroup: TransferSplitGroup.Update
	) {
		self.transferSplitGroup = transferSplitGroup
	}
}
