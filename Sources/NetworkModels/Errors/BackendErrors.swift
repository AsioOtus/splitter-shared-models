import Multitool

extension BackendError {
	static let invalidAuthenticationCredentials = Self(
		"invalidAuthenticationCredentials",
		path: .authentication
	)

	static let invalidToken = Self(
		"invalidToken",
		path: .authentication
	)

	static let expiredToken = Self(
		"expiredToken",
		path: .authentication
	)

	static let unauthorized = Self(
		"unauthorized",
		path: .authentication
	)

	static let forbidden = Self(
		"forbidden",
		path: .authentication
	)

	static let invalidPassword = Self(
		"invalidPassword",
		path: .authentication
	)

	static let incorrectUsernameOrPassword = Self(
		"incorrectUsernameOrPassword",
		path: .authentication
	)

	static let usernameAlreadyExists = Self(
		"usernameAlreadyExists",
		path: .authentication
	)

	static let reauthenticationFailed = Self(
		"reauthenticationFailed",
		path: .authentication
	)
}

extension BackendError {
	static func general (description: String) -> Self {
		.init(
			"general",
			description: description
		)
	}

	static func unexpected (description: String? = nil, details: [DetailsKey: String] = [:]) -> Self {
		.init(
			"unexpected",
			description: description,
			details: details
		)
	}

	static func requestDecodingFailure (description: String? = nil, details: [DetailsKey: String] = [:]) -> Self {
		.init(
			"requestDecodingFailure",
			description: description,
			details: details
		)
	}
}
