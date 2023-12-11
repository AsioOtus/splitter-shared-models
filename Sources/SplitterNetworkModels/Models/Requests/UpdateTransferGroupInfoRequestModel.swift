import Foundation
import SplitterSharedModels

public struct UpdateTransferGroupInfoRequestModel: RequestNetworkModel {
	public let transferGroupId: UUID
  public let transferGroupInfo: TransferUnit.Info

  public init (
		transferGroupId: UUID,
    transferGroupInfo: TransferUnit.Info
  ) {
    self.transferGroupInfo = transferGroupInfo
    self.transferGroupId = transferGroupId
  }
}
