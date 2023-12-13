import Foundation

public struct ReauthenticateRequestModel: RequestNetworkModel {
  public let userId: UUID
  public let refreshToken: String

  public init (userId: UUID, refreshToken: String) {
    self.userId = userId
    self.refreshToken = refreshToken
  }
}
