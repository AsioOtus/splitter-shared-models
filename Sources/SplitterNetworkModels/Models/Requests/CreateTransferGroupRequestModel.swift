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

  public init (from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    self.transferGroup = try container.decode(TransferGroup.New.self, forKey: .transferGroup)
    self.superTransferGroupId = try container.decodeIfPresent(UUID.self, forKey: .superTransferGroupId)
    self.userGroupId = try container.decode(UUID.self, forKey: .userGroupId)
  }
}
