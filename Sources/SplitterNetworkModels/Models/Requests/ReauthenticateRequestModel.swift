import Foundation

public struct ReauthenticateRequestModel: RequestNetworkModel {
  public let refreshToken: String

  public init (refreshToken: String) {
    self.refreshToken = refreshToken
  }
}
