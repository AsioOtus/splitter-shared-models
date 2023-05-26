import Foundation

public struct UserGroupsRequestModel: RequestNetworkModel {
	public let userId: UUID

	public init (userId: UUID) {
		self.userId = userId
	}
}
