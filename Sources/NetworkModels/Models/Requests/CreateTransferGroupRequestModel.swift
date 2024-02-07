import Foundation
import SharedModels

public struct CreateTransferGroupRequestModel: RequestNetworkModel {
	public let transferGroupContainer: TransferGroup.New.Container
  public let superTransferGroupId: UUID?
  public let userGroupId: UUID

  public init (
		transferGroupContainer: TransferGroup.New.Container,
    superTransferGroupId: UUID?,
    userGroupId: UUID
  ) {
    self.transferGroupContainer = transferGroupContainer
    self.superTransferGroupId = superTransferGroupId
    self.userGroupId = userGroupId
  }
}
