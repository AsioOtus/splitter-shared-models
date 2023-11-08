import Foundation

public struct AddContactRequestModel: RequestNetworkModel {
  public let userId: UUID

  public init (userId: UUID) {
    self.userId = userId
  }
}
