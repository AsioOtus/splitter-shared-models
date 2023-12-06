import Foundation
import MultitoolTree

public extension TransferGroup {
	struct Local: Identifiable, Hashable, Codable {
		public let id: UUID?
		public let info: TransferUnit.Info
		public private(set) var transferUnits: [TransferUnit.Local]?

		public init (
			id: UUID,
			info: TransferUnit.Info,
			transferUnits: [TransferUnit.Local]?
		) {
			self.id = id
			self.info = info
			self.transferUnits = transferUnits
		}
	}
}

extension TransferGroup.Local: TreeNode {
	public typealias Leaf = Transfer.Local

	public var trees: [InnerTree] {
		get { transferUnits ?? [] }
		set { transferUnits = newValue }
	}
}
