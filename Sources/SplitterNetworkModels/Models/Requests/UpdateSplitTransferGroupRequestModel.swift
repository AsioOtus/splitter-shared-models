import Foundation
import SplitterSharedModels

public struct UpdateSplitTransferGroupRequestModel: RequestNetworkModel {
	public let transferGroupId: UUID
	public let transferGroupInfo: TransferUnit.Info
	public let currencyId: UUID
	public let creditorId: UUID
	public let usersAmounts: [UUID: Double]

	public init (
		transferGroupId: UUID,
		transferGroupInfo: TransferUnit.Info,
		currencyId: UUID,
		creditorId: UUID,
		usersAmounts: [UUID: Double]
	) {
		self.transferGroupId = transferGroupId
		self.transferGroupInfo = transferGroupInfo
		self.currencyId = currencyId
		self.creditorId = creditorId
		self.usersAmounts = usersAmounts
	}
}
