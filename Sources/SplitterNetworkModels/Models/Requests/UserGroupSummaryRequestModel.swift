import Foundation

public struct UserGroupSummaryRequestModel: RequestNetworkModel {
	public let userGroupId: UUID

	public init (userGroupId: UUID) {
		self.userGroupId = userGroupId
	}
}
