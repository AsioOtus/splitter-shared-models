import Foundation

public extension TransferGroup {
  struct Update: Identifiable, Hashable, Codable {
    public let id: UUID
    public let info: TransferUnit.Info
		public let mode: TransferGroup.Mode

    public init (
      id: UUID,
      info: TransferUnit.Info,
			mode: TransferGroup.Mode
    ) {
      self.id = id
      self.info = info
			self.mode = mode
    }
  }
}

public extension TransferGroup.Update {
	var isSplit: Bool {
		mode == .split
	}
}
