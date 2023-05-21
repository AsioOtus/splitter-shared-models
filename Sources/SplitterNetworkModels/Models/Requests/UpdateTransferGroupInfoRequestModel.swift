import Foundation
import SplitterSharedModels

public struct UpdateTransferGroupInfoRequestModel: RequestNetworkModel {
  public let transferGroupInfo: TransferUnit.Info
  public let transferGroupId: UUID

  public init (
    transferGroupInfo: TransferUnit.Info,
    transferGroupId: UUID
  ) {
    self.transferGroupInfo = transferGroupInfo
    self.transferGroupId = transferGroupId
  }

  public init (from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    self.transferGroupInfo = try container.decode(TransferUnit.Info.self, forKey: .transferGroupInfo)
    self.transferGroupId = try container.decode(UUID.self, forKey: .transferGroupId)
  }
}
