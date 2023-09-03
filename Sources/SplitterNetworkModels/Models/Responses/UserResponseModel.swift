import SplitterSharedModels

public struct UserResponseModel: ResponseNetworkModel {
  public let user: User

  public init (user: User) {
    self.user = user
  }
}
