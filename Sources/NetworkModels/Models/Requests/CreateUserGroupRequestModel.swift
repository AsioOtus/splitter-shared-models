import Foundation

public struct CreateUserGroupRequestModel: RequestNetworkModel {
	public let userGroup: UserGroup

	public init (userGroup: UserGroup) {
		self.userGroup = userGroup
	}

	public init (from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.userGroup = try container.decode(UserGroup.self, forKey: .userGroup)
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

		public init (from decoder: Decoder) throws {
			let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)
			self.name = try container.decode(String.self, forKey: CodingKeys.name)
			self.ownerId = try container.decode(UUID.self, forKey: CodingKeys.ownerId)
		}
	}
}
