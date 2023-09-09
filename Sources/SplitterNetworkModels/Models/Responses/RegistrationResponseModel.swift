import Foundation
import SplitterSharedModels

public struct RegistrationResponseModel: ResponseNetworkModel {
  public let tokenPair: TokenPair
  public let user: User

  public init (tokenPair: TokenPair, user: User) {
    self.tokenPair = tokenPair
    self.user = user
  }
}
