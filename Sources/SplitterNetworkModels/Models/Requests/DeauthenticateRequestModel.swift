import Foundation

public struct DeauthenticateRequestModel: RequestNetworkModel {
  public let refreshToken: String

  public init (refreshToken: String) {
    self.refreshToken = refreshToken
  }
}
