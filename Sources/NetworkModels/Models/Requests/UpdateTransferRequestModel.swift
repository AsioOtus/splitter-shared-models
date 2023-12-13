import SharedModels

public struct UpdateTransferRequestModel: RequestNetworkModel {
  public let transfer: Transfer.Update

  public init (
    transfer: Transfer.Update
  ) {
    self.transfer = transfer
  }
}
