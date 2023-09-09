extension User {
  public struct New: Codable {
    public let name: String
    public let email: String
    public let login: String
    public let password: String

    public init (
      name: String,
      email: String,
      login: String,
      password: String
    ) {
      self.name = name
      self.email = email
      self.login = login
      self.password = password
    }

    public func copy (password: String) -> Self {
      .init(name: name, email: email, login: login, password: password)
    }
  }
}

