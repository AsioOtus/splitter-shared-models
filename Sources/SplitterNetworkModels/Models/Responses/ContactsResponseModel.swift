import Foundation
import SplitterSharedModels

public struct ContactsResponseModel: ResponseNetworkModel {
  public let users: [User]

  public init (users: [User]) {
    self.users = users
  }
}
