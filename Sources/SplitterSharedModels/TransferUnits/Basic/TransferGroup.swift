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
    amounts.compactMap { $0 }.forEach { dictionary[$0.currency]? += $0.value }
    return dictionary.map { currency, value in .init(value: value, currency: currency) }
  }
  
  var creditors: [User] {
    transferUnits.flatMap { $0.creditors }.compactMap { $0 }
  }
  
  var uniqueCreditors: Set<User> {
    .init(creditors)
  }

  var singleCreditor: User? {
    uniqueCreditors.count == 1 ? uniqueCreditors.first : nil
  }
  
  var borrowers: [User] {
    transferUnits.flatMap { $0.borrowers }.compactMap { $0 }
  }
  
  var uniqueBorrowers: Set<User> {
    .init(borrowers)
  }
}
