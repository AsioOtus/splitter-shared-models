import Foundation

public struct RegistrationRequestModel: RequestNetworkModel {
	public let user: User

	public init (user: User) {
		self.user = user
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
	}
}
