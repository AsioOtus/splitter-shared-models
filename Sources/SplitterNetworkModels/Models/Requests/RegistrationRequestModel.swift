import Foundation
import SplitterSharedModels

public struct RegistrationRequestModel: RequestNetworkModel {
  public let user: User.New

  public init (user: User.New) {
		self.user = user
	}
}
