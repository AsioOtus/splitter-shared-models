import Foundation

extension Transfer {
  public struct Update: Identifiable, Hashable, Codable {
    public let id: UUID
    public let info: TransferUnit.Info
    public let amountValue: Int?
    public let currencyId: UUID
    public let creditorId: UUID?
    public let borrowerId: UUID?

    public init (
      id: UUID,
      info: TransferUnit.Info,
      amountValue: Int?,
      currencyId: UUID,
      creditorId: UUID?,
      borrowerId: UUID?
    ) {
      self.id = id
      self.info = info
      self.amountValue = amountValue
      self.currencyId = currencyId
      self.creditorId = creditorId
      self.borrowerId = borrowerId
    }
  }
}
