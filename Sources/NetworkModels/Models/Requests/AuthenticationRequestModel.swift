import Foundation

public struct AuthenticationRequestModel: RequestNetworkModel {
	public let login: String
	public let password: String

	public init (login: String, password: String) {
		self.login = login
		self.password = password
	}

	public init (from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.login = try container.decode(String.self, forKey: .login)
		self.password = try container.decode(String.self, forKey: .password)
	}
}
