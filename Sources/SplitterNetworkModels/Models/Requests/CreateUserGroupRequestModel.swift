import Foundation

public struct CreateUserGroupRequestModel: RequestNetworkModel {
	public let userGroup: UserGroup

	public init (userGroup: UserGroup) {
		self.userGroup = userGroup
	}
}

extension CreateUserGroupRequestModel {
	public struct UserGroup: NetworkSubmodel {
		public let name: String
		public let ownerId: UUID

		public init (name: String, ownerId: UUID) {
			self.name = name
			self.ownerId = ownerId
		}
	}
}
