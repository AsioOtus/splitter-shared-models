import Foundation
import SplitterSharedModels

public struct CreateTransferRequestModel: RequestNetworkModel {
	public let transfer: Transfer

	public init (transfer: Transfer) {
		self.transfer = transfer
	}

	public init (from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.transfer = try container.decode(Transfer.self, forKey: .transfer)
	}
}
