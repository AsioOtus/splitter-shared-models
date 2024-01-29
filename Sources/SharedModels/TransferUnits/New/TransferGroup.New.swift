public extension TransferGroup {
  struct New: Hashable, Codable {
    public let info: TransferUnit.Info
		public let mode: TransferGroup.Mode

    public init (
      info: TransferUnit.Info,
			mode: TransferGroup.Mode
		) {
      self.info = info
			self.mode = mode
    }
  }
}

public extension TransferGroup.New {
	var isSplit: Bool {
		mode == .split
	}
}
