import SharedModels

public struct UserDetailsResponseModel: ResponseNetworkModel {
	public let user: User.Compact

	public init (user: User.Compact) {
		self.user = user
	}
}
