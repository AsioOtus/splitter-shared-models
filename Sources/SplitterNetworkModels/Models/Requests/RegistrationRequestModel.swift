import Foundation

public struct RegistrationRequestModel: RequestNetworkModel {
	public let user: User

	public init (user: User) {
		self.user = user
	}

	public init (from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.user = try container.decode(RegistrationRequestModel.User.self, forKey: .user)
	}
}

extension RegistrationRequestModel {
	public struct User: NetworkSubmodel {
		public let name: String
		public let login: String
		public let email: String?
		public let password: String

		public init (name: String, login: String, email: String?, password: String) {
			self.name = name
			self.login = login
			self.email = email
			self.password = password
		}

		public init (from decoder: Decoder) throws {
			let container: KeyedDecodingContainer<RegistrationRequestModel.User.CodingKeys> = try decoder.container(keyedBy: RegistrationRequestModel.User.CodingKeys.self)
			self.name = try container.decode(String.self, forKey: RegistrationRequestModel.User.CodingKeys.name)
			self.login = try container.decode(String.self, forKey: RegistrationRequestModel.User.CodingKeys.login)
			self.email = try container.decodeIfPresent(String.self, forKey: RegistrationRequestModel.User.CodingKeys.email)
			self.password = try container.decode(String.self, forKey: RegistrationRequestModel.User.CodingKeys.password)
		}
	}
}
