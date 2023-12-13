import SharedModels

public struct CreateTransferGroupResponseModel: ResponseNetworkModel {
  public let transferGroup: TransferGroup

  public init (transferGroup: TransferGroup) {
    self.transferGroup = transferGroup
  }
}
