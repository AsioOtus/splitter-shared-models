import Foundation

extension TransferUnit {
  public struct Info: Hashable {
    public let name: String?
    public let note: String?
    public let date: Date?

    public init (
      name: String?,
      note: String?,
      date: Date?
    ) {
      self.name = name
      self.note = note
      self.date = date
    }
  }
}
