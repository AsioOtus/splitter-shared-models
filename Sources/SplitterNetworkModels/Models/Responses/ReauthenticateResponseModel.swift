import Foundation

public struct ReauthenticateResponseModel: RequestNetworkModel {
  public let tokenPair: TokenPair

  public init (tokenPair: TokenPair) {
    self.tokenPair = tokenPair
  }
}
