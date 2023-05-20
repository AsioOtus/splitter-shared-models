import Foundation
import SharedModels

public struct CreateTransferResponseModel: ResponseNetworkModel {
	public let transfer: Transfer

	public init (transfer: Transfer) {
		self.transfer = transfer
	}

	public init (from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.transfer = try container.decode(CreateTransferResponseModel.Transfer.self, forKey: .transfer)
	}
}

extension CreateTransferResponseModel {
	public struct Transfer: NetworkSubmodel {
		public let name: String?
		public let amount: Double
		public let currency: Currency
		public let userGroupId: UUID
		public let groupId: UUID?
		public let creditor: User
		public let borrower: User

		public init (
			name: String?,
			amount: Double,
			currency: Currency,
			userGroupId: UUID,
			groupId: UUID?,
			creditor: User,
			borrower: User
		) {
			self.name = name
			self.amount = amount
			self.currency = currency
			self.userGroupId = userGroupId
			self.groupId = groupId
			self.creditor = creditor
			self.borrower = borrower
		}

		public init (from decoder: Decoder) throws {
			let container: KeyedDecodingContainer<CreateTransferResponseModel.Transfer.CodingKeys> = try decoder.container(keyedBy: CreateTransferResponseModel.Transfer.CodingKeys.self)
			self.name = try container.decodeIfPresent(String.self, forKey: CreateTransferResponseModel.Transfer.CodingKeys.name)
			self.amount = try container.decode(Double.self, forKey: CreateTransferResponseModel.Transfer.CodingKeys.amount)
			self.currency = try container.decode(Currency.self, forKey: CreateTransferResponseModel.Transfer.CodingKeys.currency)
			self.userGroupId = try container.decode(UUID.self, forKey: CreateTransferResponseModel.Transfer.CodingKeys.userGroupId)
			self.groupId = try container.decode(UUID.self, forKey: CreateTransferResponseModel.Transfer.CodingKeys.groupId)
			self.creditor = try container.decode(User.self, forKey: CreateTransferResponseModel.Transfer.CodingKeys.creditor)
			self.borrower = try container.decode(User.self, forKey: CreateTransferResponseModel.Transfer.CodingKeys.borrower)
		}
	}
}
