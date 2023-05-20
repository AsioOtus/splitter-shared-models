import Foundation

public struct User: Hashable {
  public let id: UUID
  public let name: String
  
  public init (id: UUID, name: String) {
    self.id = id
    self.name = name
  }

  public var firstLetters: String { .init(name.prefix(2)) }
}
