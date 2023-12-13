import Foundation
import SharedModels

public struct ReauthenticateResponseModel: ResponseNetworkModel {
  public let tokenPair: TokenPair

  public init (tokenPair: TokenPair) {
    self.tokenPair = tokenPair
  }
}
