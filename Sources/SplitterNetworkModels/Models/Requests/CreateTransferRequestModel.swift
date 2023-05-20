import Foundation
import SplitterSharedModels

public struct CreateTransferRequestModel: RequestNetworkModel {
  public let transfer: Transfer.New
  public let superTransferGroupId: UUID?
  public let userGroupId: UUID

  public init (
    transfer: Transfer.New,
    superTransferGroupId: UUID?,
    userGroupId: UUID
  ) {
    self.transfer = transfer
    self.superTransferGroupId = superTransferGroupId
    self.userGroupId = userGroupId
  }

  public init (from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    self.transfer = try container.decode(Transfer.New.self, forKey: .transfer)
    self.superTransferGroupId = try container.decodeIfPresent(UUID.self, forKey: .superTransferGroupId)
    self.userGroupId = try container.decode(UUID.self, forKey: .userGroupId)
  }
}
