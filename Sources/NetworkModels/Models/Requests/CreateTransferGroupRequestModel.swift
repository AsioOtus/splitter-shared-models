import Foundation
import SharedModels

public struct CreateTransferGroupRequestModel: RequestNetworkModel {
  public let transferGroup: TransferGroup.New
	public let transferUnits: [TransferUnit.New]
  public let superTransferGroupId: UUID?
  public let userGroupId: UUID

  public init (
    transferGroup: TransferGroup.New,
		transferUnits: [TransferUnit.New],
    superTransferGroupId: UUID?,
    userGroupId: UUID
  ) {
    self.transferGroup = transferGroup
		self.transferUnits = transferUnits
    self.superTransferGroupId = superTransferGroupId
    self.userGroupId = userGroupId
  }
}
