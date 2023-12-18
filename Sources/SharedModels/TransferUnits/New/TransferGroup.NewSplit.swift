import Foundation

extension TransferGroup {
	public struct NewSplit: Hashable, Codable {
		public let info: TransferUnit.Info
		public let currencyId: UUID
		public let creditorId: UUID?
		public let usersAmounts: [UUID: Double]

		public init (
			info: TransferUnit.Info,
			currencyId: UUID,
			creditorId: UUID?,
			usersAmounts: [UUID: Double]
		) {
			self.info = info
			self.currencyId = currencyId
			self.creditorId = creditorId
			self.usersAmounts = usersAmounts
		}
	}
}
