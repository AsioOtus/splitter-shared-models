import Foundation

extension SharedResponsesSubmodels {
	public struct UserGroup: ResponseNetworkSubmodel {
		public let id: UUID
		public let name: String

		public init (id: UUID, name: String) {
			self.id = id
			self.name = name
		}

		public init (from decoder: Decoder) throws {
			let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)
			self.id = try container.decode(UUID.self, forKey: CodingKeys.id)
			self.name = try container.decode(String.self, forKey: CodingKeys.name)
		}
	}
}
