public struct Amount: Hashable {
  public let value: Double
  public let currency: Currency
  
  public init (value: Double, currency: Currency) {
    self.value = value
    self.currency = currency
  }
}

public extension Amount {
  static func + (_ lhs: Self, _ rhs: Self) -> Self? {
    guard lhs.currency == rhs.currency else { return nil }
    
    return .init(value: lhs.value + rhs.value, currency: lhs.currency)
  }

  static func - (_ lhs: Self, _ rhs: Self) -> Self? {
    guard lhs.currency == rhs.currency else { return nil }

    return .init(value: lhs.value - rhs.value, currency: lhs.currency)
  }

  static func / (_ lhs: Self, _ rhs: Int) -> Self {
    .init(value: lhs.value / Double(rhs), currency: lhs.currency)
  }

  static func / (_ lhs: Self, _ rhs: Double) -> Self {
    .init(value: lhs.value / rhs, currency: lhs.currency)
  }
}

public extension Amount {
  func copy (value: Double) -> Self {
    .init(value: value, currency: currency)
  }

  func copy (currency: Currency) -> Self {
    .init(value: value, currency: currency)
  }
}
