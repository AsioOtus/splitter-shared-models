import Foundation

public struct UserGroupsRequestModel: RequestNetworkModel {
	public let userId: UUID

	public init (userId: UUID) {
		self.userId = userId
	}

	public init (from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.userId = try container.decode(UUID.self, forKey: .userId)
	}
}
