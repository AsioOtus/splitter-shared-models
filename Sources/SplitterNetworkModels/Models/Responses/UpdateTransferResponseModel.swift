import SplitterSharedModels

public struct UpdateTransferResponseModel: ResponseNetworkModel {
  public let transfer: Transfer

  public init (transfer: Transfer) {
    self.transfer = transfer
  }
}
