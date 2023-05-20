import Foundation
import SharedModels

public struct RegistrationResponseModel: ResponseNetworkModel {
	public let user: User

	public init (user: User) {
		self.user = user
	}

	public init (from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.user = try container.decode(User.self, forKey: .user)
	}
}
