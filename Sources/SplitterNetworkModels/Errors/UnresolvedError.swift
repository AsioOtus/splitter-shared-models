public struct UnresolvedError: Error {
	public let key: String
	public let code: Int
	public let message: String?
	public let details: [DetailsKey: String]

	init (_ key: String, code: Int, message: String? = nil, details: [DetailsKey: String] = [:]) {
		self.key = "unresolved.error.\(key)"
		self.code = code
		self.message = message
		self.details = details
	}

	public static func custom (
		_ key: String,
		code: Int,
		message: String? = nil,
		details: [DetailsKey: String] = [:]
	) -> Self {
		.init(key, code: code, message: message, details: details)
	}
}

extension UnresolvedError {
	public struct DetailsKey: ResponseNetworkSubmodel, Hashable, ExpressibleByStringLiteral {
		public let key: String

		public init (_ key: String) {
			self.key = key
		}

		public init (stringLiteral: String) {
			self.init(stringLiteral)
		}
	}
}

extension UnresolvedError.DetailsKey {
	public static let description: Self = "description"
}
