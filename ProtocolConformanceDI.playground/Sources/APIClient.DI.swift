import Foundation

extension InjectorProtocol {
    public var apiClient: APIClientable { return self.mapper.getSingleton()! }
}

public protocol HasAPIClient {
    var apiClient: APIClientable { get }
}

public extension HasAPIClient {
    static var apiClient: APIClientable {
        return injector().apiClient
    }

    var apiClient: APIClientable {
        return injector().apiClient
    }
}
