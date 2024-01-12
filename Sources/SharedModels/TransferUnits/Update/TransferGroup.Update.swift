import Foundation
import MultitoolTree

public extension TransferGroup {
  struct Update: Identifiable, Hashable, Codable {
    public let id: UUID
    public let info: TransferUnit.Info
		public let type: TransferGroupType
    public private(set) var transferUnits: [TransferUnit.Update]?

    public init (
      id: UUID,
      info: TransferUnit.Info,
			type: TransferGroupType,
      transferUnits: [TransferUnit.Update]?
    ) {
      self.id = id
      self.info = info
			self.type = type
      self.transferUnits = transferUnits
    }
  }
}

extension TransferGroup.Update: TreeNode {
  public typealias Leaf = Transfer.Update

  public var trees: [InnerTree] {
    get { transferUnits ?? [] }
    set { transferUnits = newValue }
  }
}
