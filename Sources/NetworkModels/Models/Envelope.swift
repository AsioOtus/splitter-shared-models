public struct Envelope<ResponseModel: ResponseNetworkModel>: ResponseNetworkModel {
	public let result: Result<ResponseModel, DomainError>

  public init (_ model: ResponseModel) {
		result = .success(model)
  }

  public init (_ error: DomainError) {
		result = .failure(error)
  }

	public static func model (_ model: ResponseModel) -> Self { .init(model) }
	public static func error (_ error: DomainError) -> Self { .init(error) }
}

extension Envelope: Equatable where ResponseModel: Equatable { }
