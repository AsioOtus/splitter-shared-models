import Foundation
import SplitterSharedModels

public struct AuthenticateResponseModel: ResponseNetworkModel {
	public let token: Tokens
	public let user: User

	public init (token: String, user: User) {
		self.token = token
		self.user = user
	}
}
