import Foundation

public struct UserGroupTransfersRequestModel: RequestNetworkModel {
	public let userGroupId: UUID

	public init (userGroupId: UUID) {
		self.userGroupId = userGroupId
	}

	public init (from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.userGroupId = try container.decode(UUID.self, forKey: .userGroupId)
	}
}
