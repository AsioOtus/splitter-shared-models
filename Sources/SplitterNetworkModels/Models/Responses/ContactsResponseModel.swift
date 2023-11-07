import Foundation
import SplitterSharedModels

public struct ContactsResponseModel: ResponseNetworkModel {
  public let users: [User.Compact]

  public init (users: [User.Compact]) {
    self.users = users
  }
}
