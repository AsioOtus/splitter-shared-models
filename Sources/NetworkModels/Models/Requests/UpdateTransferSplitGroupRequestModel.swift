import Foundation
import SharedModels

public struct UpdateTransferSplitGroupRequestModel: RequestNetworkModel {
	public let transferSplitGroup: TransferGroup.UpdateSplit
	public let superTransferGroupId: UUID?
	public let userGroupId: UUID

	public init (
		transferSplitGroup: TransferGroup.UpdateSplit,
		superTransferGroupId: UUID?,
		userGroupId: UUID
	) {
		self.transferSplitGroup = transferSplitGroup
		self.superTransferGroupId = superTransferGroupId
		self.userGroupId = userGroupId
	}
}
