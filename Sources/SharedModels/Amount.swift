public struct Amount: Hashable, Codable {
  public let value: Double?
  public let currency: Currency
  
  public init (value: Double?, currency: Currency) {
    self.value = value
    self.currency = currency
  }

	public var valueOrZero: Double {
		value ?? 0
	}
}

public extension Amount {
  static func + (_ lhs: Self, _ rhs: Self) -> Self? {
    guard lhs.currency == rhs.currency else { return nil }
    
    return .init(value: lhs.valueOrZero + rhs.valueOrZero, currency: lhs.currency)
  }

  static func - (_ lhs: Self, _ rhs: Self) -> Self? {
    guard lhs.currency == rhs.currency else { return nil }

    return .init(value: lhs.valueOrZero - rhs.valueOrZero, currency: lhs.currency)
  }

  static func / (_ lhs: Self, _ rhs: Int) -> Self {
    .init(value: lhs.valueOrZero / Double(rhs), currency: lhs.currency)
  }

  static func / (_ lhs: Self, _ rhs: Double) -> Self {
    .init(value: lhs.valueOrZero / rhs, currency: lhs.currency)
  }
}

public extension Amount {
  func set (value: Double?) -> Self {
    .init(value: value, currency: currency)
  }

  func set (currency: Currency) -> Self {
    .init(value: value, currency: currency)
  }
}
