import MultitoolTree

public extension TransferGroup {
  struct New: Hashable, Codable {
    public let info: TransferUnit.Info
		public let type: TransferGroupType
    public private(set) var transferUnits: [TransferUnit.New]?

    public init (
      info: TransferUnit.Info,
			type: TransferGroupType,
      transferUnits: [TransferUnit.New]
    ) {
      self.info = info
			self.type = type
      self.transferUnits = transferUnits
    }
  }
}

extension TransferGroup.New: TreeNode {
  public typealias Leaf = Transfer.New

  public var trees: [InnerTree] {
    get { transferUnits ?? [] }
    set { transferUnits = newValue }
  }
}
