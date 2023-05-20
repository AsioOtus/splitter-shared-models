import Foundation

public struct CreateTransferGroupRequestModel: RequestNetworkModel {
  public let name: String?
  public let userGroupId: UUID
  public let groupId: UUID?
  public let transfers: [Transfer]

  public init (
    name: String?,
    userGroupId: UUID,
    groupId: UUID?,
    transfers: [CreateTransferGroupRequestModel.Transfer]
  ) {
    self.name = name
    self.userGroupId = userGroupId
    self.groupId = groupId
    self.transfers = transfers
  }

  public init (from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.name = try container.decodeIfPresent(String.self, forKey: .name)
    self.userGroupId = try container.decode(UUID.self, forKey: .userGroupId)
    self.groupId = try container.decodeIfPresent(UUID.self, forKey: .groupId)
    self.transfers = try container.decode([CreateTransferGroupRequestModel.Transfer].self, forKey: .transfers)
  }
}

extension CreateTransferGroupRequestModel {
  public struct Transfer: NetworkSubmodel {
    public let name: String?
    public let amount: Double
    public let currencyId: UUID
    public let creditorId: UUID
    public let borrowerId: UUID?

    public init (
      name: String?,
      amount: Double,
      currencyId: UUID,
      creditorId: UUID,
      borrowerId: UUID?
    ) {
      self.name = name
      self.amount = amount
      self.currencyId = currencyId
      self.creditorId = creditorId
      self.borrowerId = borrowerId
    }

    public init (from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: CodingKeys.self)
      self.name = try container.decodeIfPresent(String.self, forKey: .name)
      self.amount = try container.decode(Double.self, forKey: .amount)
      self.currencyId = try container.decode(UUID.self, forKey: .currencyId)
      self.creditorId = try container.decode(UUID.self, forKey: .creditorId)
      self.borrowerId = try container.decodeIfPresent(UUID.self, forKey: .borrowerId)
    }
  }
}
