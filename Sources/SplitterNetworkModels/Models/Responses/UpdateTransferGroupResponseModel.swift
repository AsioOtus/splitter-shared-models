import SplitterSharedModels

public struct UpdateTransferGroupResponseModel: ResponseNetworkModel {
  public let transferGroup: TransferGroup

  public init (transferGroup: TransferGroup) {
    self.transferGroup = transferGroup
  }

  public init (from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    self.transferGroup = try container.decode(TransferGroup.self, forKey: .transferGroup)
  }
}
