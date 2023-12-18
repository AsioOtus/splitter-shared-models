import Foundation
import SharedModels

public struct CreateTransferSplitGroupRequestModel: RequestNetworkModel {
	public let transferSplitGroup: TransferGroup.NewSplit
	public let superTransferGroupId: UUID?
	public let userGroupId: UUID

	public init (
		transferSplitGroup: TransferGroup.NewSplit,
		superTransferGroupId: UUID?,
		userGroupId: UUID
	) {
		self.transferSplitGroup = transferSplitGroup
		self.superTransferGroupId = superTransferGroupId
		self.userGroupId = userGroupId
	}
}
