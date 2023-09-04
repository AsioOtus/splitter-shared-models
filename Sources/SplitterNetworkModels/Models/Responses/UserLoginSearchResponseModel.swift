import SplitterSharedModels

public struct UserLoginSearchResponseModel: ResponseNetworkModel {
  public let user: User?

  public init (user: User?) {
    self.user = user
  }
}
