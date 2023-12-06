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
	var isSplit: Bool {
		transferUnits.isSingleCreditor &&
		transferUnits.isSingleCurrency &&
		!transferUnits.hasDuplicatedBorrowers &&
		!transferUnits.hasNestedGroups
	}
}
