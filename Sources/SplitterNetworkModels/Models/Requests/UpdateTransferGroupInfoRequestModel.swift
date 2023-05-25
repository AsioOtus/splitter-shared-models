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
}
