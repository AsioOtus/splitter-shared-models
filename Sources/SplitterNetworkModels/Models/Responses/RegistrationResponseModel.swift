import Foundation
import SplitterSharedModels

public struct RegistrationResponseModel: ResponseNetworkModel {
	public let user: User

	public init (user: User) {
		self.user = user
	}
}
