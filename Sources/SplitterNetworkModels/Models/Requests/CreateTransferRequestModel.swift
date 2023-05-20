import Foundation
import SplitterSharedModels

public struct CreateTransferRequestModel: RequestNetworkModel {
  public let transfer: Transfer.New

	public init (transfer: Transfer.New) {
		self.transfer = transfer
	}

	public init (from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.transfer = try container.decode(Transfer.New.self, forKey: .transfer)
	}
}
