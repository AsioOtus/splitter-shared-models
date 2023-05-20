import Foundation

public struct CreateUserGroupResponseModel: ResponseNetworkModel {
	public let userGroup: SharedResponsesSubmodels.UserGroup

	public init (userGroup: SharedResponsesSubmodels.UserGroup) {
		self.userGroup = userGroup
	}

	public init (from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.userGroup = try container.decode(SharedResponsesSubmodels.UserGroup.self, forKey: .userGroup)
	}
}
