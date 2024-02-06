import Foundation

extension TransferSplitGroup {
	public struct New: Hashable, Codable {
		public let info: TransferUnit.Info
		public let currencyId: UUID
		public let creditorId: UUID?
		public let borrowerAmounts: [UUID: Double]

		public init (
			info: TransferUnit.Info,
			currencyId: UUID,
			creditorId: UUID?,
			borrowerAmounts: [UUID: Double]
		) {
			self.info = info
			self.currencyId = currencyId
			self.creditorId = creditorId
			self.borrowerAmounts = borrowerAmounts
		}
	}
}
