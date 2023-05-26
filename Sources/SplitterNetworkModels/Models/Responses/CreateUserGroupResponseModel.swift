import Foundation

public struct CreateUserGroupResponseModel: ResponseNetworkModel {
	public let userGroup: SharedResponsesSubmodels.UserGroup

	public init (userGroup: SharedResponsesSubmodels.UserGroup) {
		self.userGroup = userGroup
	}
}
