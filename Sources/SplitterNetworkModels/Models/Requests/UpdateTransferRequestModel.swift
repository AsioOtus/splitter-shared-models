import SplitterSharedModels

public struct UpdateTransferRequestModel: RequestNetworkModel {
  public let transfer: Transfer.Update

  public init (
    transfer: Transfer.Update
  ) {
    self.transfer = transfer
  }

  public init (from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    self.transfer = try container.decode(Transfer.Update.self, forKey: .transfer)
  }
}
