import Foundation

public struct User: Hashable, Codable {
  public let id: UUID
  public let name: String
  public let email: String
  public let login: String
  
  public init (
    id: UUID,
    name: String,
    email: String? = nil,
    login: String
  ) {
    self.id = id
    self.name = name
    self.email = email
    self.login = login
  }

  public var firstLetters: String { .init(name.prefix(2)) }
}
