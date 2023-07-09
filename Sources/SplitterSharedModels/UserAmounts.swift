import Foundation

public struct UserAmounts: Equatable, Codable {
	public let user: User
	public let amounts: [Amount]

	public init (
		user: User,
		amounts: [Amount]
	) {
		self.user = user
		self.amounts = amounts
	}
}
