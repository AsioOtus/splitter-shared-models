import Foundation

extension UserGroup {
  struct New {
    public let name: String
    public let userIds: [UUID]

    public init(
      name: String,
      userIds: [UUID]
    ) {
      self.name = name
      self.userIds = userIds
    }
  }
}
