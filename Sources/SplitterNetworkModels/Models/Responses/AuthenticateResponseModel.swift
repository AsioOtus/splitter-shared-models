import Foundation
import SplitterSharedModels

public struct AuthenticateResponseModel: ResponseNetworkModel {
	public let tokens: Tokens
	public let user: User

	public init (tokens: Tokens, user: User) {
		self.tokens = tokens
		self.user = user
	}
}
