import Foundation
import MultitoolTree

public struct Transfer: Identifiable, Hashable, Codable {
  public let id: UUID
  public let info: TransferUnit.Info
  public let amount: Amount
  public let creditor: User
  public let borrower: User?
  
  public init (
    id: UUID = .init(),
    info: TransferUnit.Info,
    amount: Amount,
    creditor: User,
    borrower: User?
  ) {
    self.id = id
    self.info = info
    self.amount = amount
    self.creditor = creditor
    self.borrower = borrower
  }
}

public extension Transfer {
  var new: New {
    .init(
      info: info,
      amountValue: amount.value,
      currencyId: amount.currency.id,
      creditorId: creditor.id,
      borrowerId: borrower?.id
    )
  }

  var update: Update {
    .init(
      id: id,
      info: info,
      amountValue: amount.value,
      currencyId: amount.currency.id,
      creditorId: creditor.id,
      borrowerId: borrower?.id
    )
  }
}
