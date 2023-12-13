import Foundation

public struct UserGroupsResponseModel: ResponseNetworkModel {
	public let userGroups: [SharedResponsesSubmodels.UserGroup]

	public init (userGroups: [SharedResponsesSubmodels.UserGroup]) {
		self.userGroups = userGroups
	}
}
