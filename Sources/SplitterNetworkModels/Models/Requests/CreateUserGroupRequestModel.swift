import Foundation
import SplitterSharedModels

public struct CreateUserGroupRequestModel: RequestNetworkModel {
  public let userGroup: UserGroup.New

	public init (userGroup: UserGroup.New) {
		self.userGroup = userGroup
	}
}
