import Foundation
import SplitterSharedModels

public struct UpdateTransferGroupRequestModel: RequestNetworkModel {
  public let transferGroup: TransferGroup.Update

  public init (
    transferGroup: TransferGroup.Update
  ) {
    self.transferGroup = transferGroup
  }

  public init (from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    self.transferGroup = try container.decode(TransferGroup.Update.self, forKey: .transferGroup)
  }
}
