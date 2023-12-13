import Foundation

public struct AddUserToUserGroupRequestModel: RequestNetworkModel {
	public let userGroupId: UUID
	public let users: [UUID]

	public init (
		userGroupId: UUID,
		users: [UUID]
	) {
		self.userGroupId = userGroupId
		self.users = users
	}
}
