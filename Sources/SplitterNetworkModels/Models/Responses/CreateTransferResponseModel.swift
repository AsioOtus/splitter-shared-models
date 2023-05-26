import SplitterSharedModels

public struct CreateTransferResponseModel: ResponseNetworkModel {
	public let transfer: Transfer

	public init (transfer: Transfer) {
		self.transfer = transfer
	}
}
