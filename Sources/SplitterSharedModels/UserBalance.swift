public struct UserBalance: Hashable {
	public let user: User
	public let relatedUserAmounts: [UserAmounts]

	public var totalAmount: [Amount] {
		relatedUserAmounts.flatMap { $0.amounts }.reduced()
	}
}
