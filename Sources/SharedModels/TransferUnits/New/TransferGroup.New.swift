import MultitoolTree

public extension TransferGroup {
  struct New: Hashable, Codable {
    public let info: TransferUnit.Info
		public let mode: TransferGroup.Mode
    public private(set) var transferUnits: [TransferUnit.New]?

    public init (
      info: TransferUnit.Info,
			mode: TransferGroup.Mode,
      transferUnits: [TransferUnit.New]
    ) {
      self.info = info
			self.mode = mode
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
