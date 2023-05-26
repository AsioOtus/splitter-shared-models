import Foundation

public struct AuthenticationRequestModel: RequestNetworkModel {
	public let login: String
	public let password: String

	public init (login: String, password: String) {
		self.login = login
		self.password = password
	}
}
