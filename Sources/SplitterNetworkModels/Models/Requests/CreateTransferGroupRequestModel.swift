import Foundation
import SplitterSharedModels

public struct CreateTransferGroupRequestModel: RequestNetworkModel {
  public let transferGroup: TransferGroup.New
  public let superTransferGroupId: UUID?
  public let userGroupId: UUID

  public init (
    transferGroup: TransferGroup.New,
    superTransferGroupId: UUID?,
    userGroupId: UUID
  ) {
    self.transferGroup = transferGroup
    self.superTransferGroupId = superTransferGroupId
    self.userGroupId = userGroupId
  }
}
