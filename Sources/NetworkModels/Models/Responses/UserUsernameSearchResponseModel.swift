import SharedModels

public struct UserUsernameSearchResponseModel: ResponseNetworkModel {
  public let user: User?

  public init (user: User?) {
    self.user = user
  }
}
