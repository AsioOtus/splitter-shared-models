import Foundation
import SharedModels

public struct RegistrationRequestModel: RequestNetworkModel {
  public let user: User.New

  public init (user: User.New) {
		self.user = user
	}
}
