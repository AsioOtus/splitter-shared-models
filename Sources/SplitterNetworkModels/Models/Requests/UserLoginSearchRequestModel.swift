public struct UserLoginSearchRequestModel: RequestNetworkModel {
  public let login: String

  public init (login: String) {
    self.login = login
  }
}
