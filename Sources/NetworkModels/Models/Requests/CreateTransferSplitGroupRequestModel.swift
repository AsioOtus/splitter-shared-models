import Foundation
import SharedModels

public struct CreateTransferSplitGroupRequestModel: RequestNetworkModel {
	public let transferSplitGroup: TransferSplitGroup.New
	public let superTransferGroupId: UUID?
	public let userGroupId: UUID

	public init (
		transferSplitGroup: TransferSplitGroup.New,
		superTransferGroupId: UUID?,
		userGroupId: UUID
	) {
		self.transferSplitGroup = transferSplitGroup
		self.superTransferGroupId = superTransferGroupId
		self.userGroupId = userGroupId
	}
}
