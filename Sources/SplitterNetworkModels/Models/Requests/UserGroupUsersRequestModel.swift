import Foundation

public struct UserGroupUsersRequestModel: RequestNetworkModel {
  public let userGroupId: UUID

  public init (userGroupId: UUID) {
    self.userGroupId = userGroupId
  }
}
