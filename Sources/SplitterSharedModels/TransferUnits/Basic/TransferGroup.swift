import Foundation
import MultitoolTree

public struct TransferGroup: Identifiable, Hashable, Codable {
  public let id: UUID
  public let info: TransferUnit.Info
  public private(set) var transferUnits: [TransferUnit]
  
  public init (
    id: UUID,
    info: TransferUnit.Info,
    transferUnits: [TransferUnit]
  ) {
    self.id = id
    self.info = info
    self.transferUnits = transferUnits
  }
}

extension TransferGroup: TreeNode {
  public typealias Leaf = Transfer

  public var trees: [InnerTree] {
    get { transferUnits }
    set { transferUnits = newValue }
  }
}

public extension TransferGroup {
  var new: New {
    .init(
      info: info,
      transferUnits: transferUnits.map(\.new)
    )
  }

  var update: Update {
    .init(
      id: id,
      info: info,
      transferUnits: transferUnits.map(\.update)
    )
  }
}

public extension TransferGroup {
  var amounts: [Amount] {
    transferUnits.flatMap { $0.amounts }.compactMap { $0 }
  }
  
  var amountsSum: [Amount] {
    var dictionary = [Currency: Double]()
    amounts
			.compactMap { $0 }
			.forEach { dictionary[$0.currency, default: 0] += $0.value }

		let amountsSum = dictionary.map { currency, value in Amount(value: value, currency: currency) }
    return amountsSum
  }

	var singleCurrency: Currency? {
		amountsSum.count == 1 ? amountsSum.first?.currency : nil
	}

	var isSingleCurrency: Bool {
		singleCurrency != nil
	}

  var creditors: [User.Compact] {
    transferUnits.flatMap { $0.creditors }.compactMap { $0 }
  }

  var uniqueCreditors: Set<User.Compact> {
    .init(creditors)
  }

  var singleCreditor: User.Compact? {
    uniqueCreditors.count == 1 ? uniqueCreditors.first : nil
  }

	var isSingleCreditor: Bool {
		singleCreditor != nil
	}

  var borrowers: [User.Compact] {
    transferUnits.flatMap { $0.borrowers }.compactMap { $0 }
  }
  
  var uniqueBorrowers: Set<User.Compact> {
    .init(borrowers)
  }
}
