import Foundation

public struct UserGroup {
  public let id: UUID
  public let name: String

  public init (id: UUID, name: String) {
    self.id = id
    self.name = name
  }
}