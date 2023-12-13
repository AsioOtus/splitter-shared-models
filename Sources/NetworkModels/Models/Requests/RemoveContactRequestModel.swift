import Foundation

public struct RemoveContactRequestModel: RequestNetworkModel {
  public let userId: UUID

  public init (userId: UUID) {
    self.userId = userId
  }
}
