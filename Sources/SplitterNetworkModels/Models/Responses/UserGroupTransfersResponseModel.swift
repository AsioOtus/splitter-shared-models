import SharedModels

public struct UserGroupTransfersResponseModel: ResponseNetworkModel {
	public let transferUnits: [TransferUnit]

	public init (transferUnits: [TransferUnit]) {
		self.transferUnits = transferUnits
	}

	public init (from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.transferUnits = try container.decode([TransferUnit].self, forKey: .transferUnits)
	}
}
