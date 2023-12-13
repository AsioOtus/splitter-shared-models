import Foundation

public struct UserGroupTransfersRequestModel: RequestNetworkModel {
	public let userGroupId: UUID

	public init (userGroupId: UUID) {
		self.userGroupId = userGroupId
	}
}
