public struct Tokens: Codable {
  public let access: String
  public let refresh: String

  public init (
    access: String,
    refresh: String
  ) {
    self.access = access
    self.refresh = refresh
  }
}
