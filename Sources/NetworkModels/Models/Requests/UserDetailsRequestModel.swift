import Foundation

public struct UserDetailsRequestModel: RequestNetworkModel {
	public let userId: UUID

	public init (userId: UUID) {
		self.userId = userId
	}
}
