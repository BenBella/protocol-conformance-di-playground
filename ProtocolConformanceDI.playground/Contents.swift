import Foundation

struct AppEnvironment {
    static func bootstrap() {
        guard let injector = (Injector.shared as? Injector) else {
            fatalError("DI Injector object was not initialized!")
        }
        injector.mapper.mapSingleton(APIClientable.self) { APIClient() }
        injector.mapper.mapFactory(Loggable.self) { { Logger() } }
    }
}

final class Test {
    func test() {
        apiClient.test()
    }
}
extension Test: HasAPIClient {}

AppEnvironment.bootstrap()

let test = Test()
test.test()
