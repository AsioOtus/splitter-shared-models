import Foundation

public struct User: Hashable, Codable {
  public let id: UUID
  public let name: String
  public let email: String?
  public let username: String

  public init (
    id: UUID,
    name: String,
    email: String?,
    username: String
  ) {
    self.id = id
    self.name = name
    self.email = email
    self.username = username
  }

  public var firstLetters: String { .init(name.prefix(2)) }
}
