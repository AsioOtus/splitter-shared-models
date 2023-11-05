public struct ContactSearchRequestModel: RequestNetworkModel {
  public let username: String

  public init (username: String) {
    self.username = username
  }
}
