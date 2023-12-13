import Multitool

public struct DomainError: Error, Equatable, ResponseNetworkModel {
	public let code: Int
  public let key: String
	public let source: Path
  public let description: String?
  public let details: [DetailsKey: String?]

	public init (_ code: Int, _ key: String, source: Path = .general, description: String? = nil, details: [DetailsKey: String?] = [:]) {
		self.code = code
		self.key = key
		self.source = .init(["domain", "error"]).add(source).add(key)
    self.description = description
    self.details = details
  }
}

public extension Path {
	static let general: Self = "general"
}

extension DomainError {
  public struct DetailsKey: ResponseNetworkSubmodel, Hashable {
    public let key: String

		public init (_ key: String) {
			self.key = key
		}
  }
}

extension DomainError.DetailsKey: ExpressibleByStringLiteral {
	public init (stringLiteral: String) {
		self.init(stringLiteral)
	}
}

extension DomainError.DetailsKey: RawRepresentable {
	public var rawValue: String { key }

	public init? (rawValue: String) {
		self.init(rawValue)
	}
}

public extension DomainError.DetailsKey {
	static let message: Self = "message"
}
