import Foundation
import SharedModels

public struct CreateTransferSplitGroupRequestModel: RequestNetworkModel {
	public let transferGroupInfo: TransferUnit.Info
	public let currencyId: UUID
	public let creditorId: UUID?
	public let usersAmounts: [UUID: Double]

	public init (
		transferGroupInfo: TransferUnit.Info,
		currencyId: UUID,
		creditorId: UUID?,
		usersAmounts: [UUID: Double]
	) {
		self.transferGroupInfo = transferGroupInfo
		self.currencyId = currencyId
		self.creditorId = creditorId
		self.usersAmounts = usersAmounts
	}
}
