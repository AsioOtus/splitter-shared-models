import Foundation

extension Transfer {
	public struct UpdateSplit: Hashable, Codable {
		public let transferGroupId: UUID
		public let info: TransferUnit.Info
		public let amountValue: Double?
		public let currencyId: UUID
		public let creditorId: UUID?
		public let borrowerId: UUID?

		public init (
			transferGroupId: UUID,
			info: TransferUnit.Info,
			amountValue: Double?,
			currencyId: UUID,
			creditorId: UUID?,
			borrowerId: UUID?
		) {
			self.transferGroupId = transferGroupId
			self.info = info
			self.amountValue = amountValue
			self.currencyId = currencyId
			self.creditorId = creditorId
			self.borrowerId = borrowerId
		}
	}
}
