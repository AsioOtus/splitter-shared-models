import SharedModels

public struct UserGroupSummaryResponseModel: ResponseNetworkModel {
	public let userSummaries: [UserSummary]

	public init (userSummaries: [UserSummary]) {
		self.userSummaries = userSummaries
	}
}
