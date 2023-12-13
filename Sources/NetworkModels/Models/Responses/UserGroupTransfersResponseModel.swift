import SharedModels

public struct UserGroupTransfersResponseModel: ResponseNetworkModel {
	public let transferUnits: [TransferUnit]

	public init (transferUnits: [TransferUnit]) {
		self.transferUnits = transferUnits
	}
}
