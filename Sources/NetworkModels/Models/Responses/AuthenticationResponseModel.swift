import Foundation

public struct AuthenticationResponseModel: ResponseNetworkModel {
	public let token: String
	public let user: User

	public init (token: String, user: User) {
		self.token = token
		self.user = user
	}

	public init (from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.token = try container.decode(String.self, forKey: .token)
		self.user = try container.decode(AuthenticationResponseModel.User.self, forKey: .user)
	}
}

extension AuthenticationResponseModel {
	public struct User: NetworkSubmodel {
		public let id: UUID
		public let name: String

		public init (id: UUID, name: String) {
			self.id = id
			self.name = name
		}

		public init (from decoder: Decoder) throws {
			let container: KeyedDecodingContainer<AuthenticationResponseModel.User.CodingKeys> = try decoder.container(keyedBy: AuthenticationResponseModel.User.CodingKeys.self)
			self.id = try container.decode(UUID.self, forKey: AuthenticationResponseModel.User.CodingKeys.id)
			self.name = try container.decode(String.self, forKey: AuthenticationResponseModel.User.CodingKeys.name)
		}
	}
}
