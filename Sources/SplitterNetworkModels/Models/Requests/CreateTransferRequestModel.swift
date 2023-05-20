import Foundation

public struct CreateTransferRequestModel: RequestNetworkModel {
	public let transfer: Transfer

	public init (transfer: Transfer) {
		self.transfer = transfer
	}

	public init (from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.transfer = try container.decode(CreateTransferRequestModel.Transfer.self, forKey: .transfer)
	}
}

extension CreateTransferRequestModel {
	public struct Transfer: NetworkSubmodel {
		public let name: String?
		public let amount: Double
		public let currencyId: UUID
		public let userGroupId: UUID
		public let groupId: UUID?
		public let creditorId: UUID
		public let borrowerId: UUID?

		public init (
			name: String?,
			amount: Double,
			currencyId: UUID,
			userGroupId: UUID,
			groupId: UUID?,
			creditorId: UUID,
			borrowerId: UUID?
		) {
			self.name = name
			self.amount = amount
			self.currencyId = currencyId
			self.userGroupId = userGroupId
			self.groupId = groupId
			self.creditorId = creditorId
			self.borrowerId = borrowerId
		}

		public init (from decoder: Decoder) throws {
			let container = try decoder.container(keyedBy: CodingKeys.self)
			self.name = try container.decodeIfPresent(String.self, forKey: .name)
			self.amount = try container.decode(Double.self, forKey: .amount)
			self.currencyId = try container.decode(UUID.self, forKey: .currencyId)
			self.userGroupId = try container.decode(UUID.self, forKey: .userGroupId)
			self.groupId = try container.decodeIfPresent(UUID.self, forKey: .groupId)
			self.creditorId = try container.decode(UUID.self, forKey: .creditorId)
			self.borrowerId = try container.decodeIfPresent(UUID.self, forKey: .borrowerId)
		}
	}
}
