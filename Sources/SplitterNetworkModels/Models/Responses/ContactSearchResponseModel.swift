import Foundation
import SplitterSharedModels

public struct ContactSearchResponseModel: ResponseNetworkModel {
  public let user: User.Compact?

  public init (user: User.Compact?) {
    self.user = user
  }
}
