import Foundation

public struct AuthenticateRequestModel: RequestNetworkModel {
	public let login: String
	public let password: String

	public init (login: String, password: String) {
		self.login = login
		self.password = password
	}
}
