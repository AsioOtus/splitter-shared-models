import Foundation

public struct AuthenticationResponseModel: ResponseNetworkModel {
	public let token: String
	public let user: User

	public init (token: String, user: User) {
		self.token = token
		self.user = user
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
	}
}
