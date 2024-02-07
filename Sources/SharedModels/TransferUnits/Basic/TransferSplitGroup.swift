import Foundation

public struct TransferSplitGroup: Identifiable, Hashable, Codable {
	public let id: UUID
	public let info: TransferUnit.Info
	public let currency: Currency
	public let creditor: User.Compact?
	public let borrowerAmounts: [User.Compact: Double]

	public init (
		id: UUID,
		info: TransferUnit.Info,
		currency: Currency,
		creditor: User.Compact?,
		borrowerAmounts: [User.Compact: Double]
	) {
		self.id = id
		self.info = info
		self.currency = currency
		self.creditor = creditor
		self.borrowerAmounts = borrowerAmounts
	}
}

public extension TransferSplitGroup {
	var new: New {
		.init(
			info: info,
			currencyId: currency.id,
			creditorId: creditor?.id,
			borrowerAmounts: .init(
				uniqueKeysWithValues: borrowerAmounts.map { ($0.id, $1) }
			)
		)
	}

	var update: Update {
		.init(
			id: id,
			info: info,
			currencyId: currency.id,
			creditorId: creditor?.id,
			borrowerAmounts: .init(
				uniqueKeysWithValues: borrowerAmounts.map { ($0.id, $1) }
			)
		)
	}
}

public extension TransferSplitGroup {
	var amountSum: Amount {
		.init(value: borrowerAmounts.values.reduce(0, +), currency: currency)
	}
}
