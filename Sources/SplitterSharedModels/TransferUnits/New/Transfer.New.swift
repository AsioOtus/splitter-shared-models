import Foundation

public extension Transfer {
  struct New: Hashable {
    public let info: TransferUnit.Info
    public let amountValue: Double
    public let currencyId: UUID
    public let creditorId: UUID
    public let borrowerId: UUID?

    public init (
      info: TransferUnit.Info,
      amountValue: Double,
      currencyId: UUID,
      creditorId: UUID,
      borrowerId: UUID?
    ) {
      self.info = info
      self.amountValue = amountValue
      self.currencyId = currencyId
      self.creditorId = creditorId
      self.borrowerId = borrowerId
    }
  }
}
