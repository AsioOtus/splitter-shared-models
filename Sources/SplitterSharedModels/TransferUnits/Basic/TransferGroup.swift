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
    transferUnits.flatMap { $0.amounts }
  }
  
  var summarizedAmounts: [Amount] {
    var result = [Amount]()
    
    for amount in amounts {
      if
        let index = result.firstIndex(where: { $0.currency == amount.currency }),
        let sum = result[index] + amount
      {
        result[index] = sum
      } else {
        result.append(amount)
      }
    }
    
    return result
  }
  
  var creditors: [User] {
    transferUnits.flatMap { $0.creditors }
  }
  
  var uniqueCreditors: [User] {
    .init(Set(creditors)).sorted { $0.name > $1.name }
  }

  var singleCreditor: User? {
    uniqueCreditors.count == 1 ? uniqueCreditors.first : nil
  }
  
  var borrowers: [User?] {
    transferUnits.flatMap { $0.borrowers }
  }
  
  var uniqueBorrowers: [User?] {
    .init(Set(borrowers)).compactMap{ $0 }.sorted { $0.name > $1.name }
  }
}
