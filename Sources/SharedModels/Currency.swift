import Foundation

public struct Currency: Hashable, Codable {
  public let id: UUID
  public let code: String
  
  public init (id: UUID, code: String) {
    self.id = id
    self.code = code
  }
}
