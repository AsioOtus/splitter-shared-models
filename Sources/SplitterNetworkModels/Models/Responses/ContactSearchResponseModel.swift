import SplitterSharedModels

public struct ContactSearchResponseModel: ResponseNetworkModel {
  public let searchResult: User.ContactSearch?

  public init (searchResult: User.ContactSearch?) {
    self.searchResult = searchResult
  }
}
