import Foundation

public struct UserGroupsResponseModel: ResponseNetworkModel {
	public let userGroups: [SharedResponsesSubmodels.UserGroup]

	public init (userGroups: [SharedResponsesSubmodels.UserGroup]) {
		self.userGroups = userGroups
	}

	public init (from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.userGroups = try container.decode([SharedResponsesSubmodels.UserGroup].self, forKey: .userGroups)
	}
}
