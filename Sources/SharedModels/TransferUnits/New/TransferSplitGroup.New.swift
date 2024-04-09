import Foundation

extension TransferSplitGroup {
	public struct New: Hashable, Codable {
		public let info: TransferUnit.Info
		public let amountValue: Int?
		public let currencyId: UUID
		public let creditorId: UUID?
		public let borrowerAmounts: [UUID: Double?]

		public init (
			info: TransferUnit.Info,
			amountValue: Int?,
			currencyId: UUID,
			creditorId: UUID?,
			borrowerAmounts: [UUID: Double?]
		) {
			self.info = info
			self.amountValue = amountValue
			self.currencyId = currencyId
			self.creditorId = creditorId
			self.borrowerAmounts = borrowerAmounts
		}
	}
}
