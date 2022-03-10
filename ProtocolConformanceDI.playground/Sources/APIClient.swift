import Foundation

public protocol APIClientable {
    func test()
}

public final class APIClient: APIClientable {
    
    public init() {}
    
    public func test() {
        print("APIClient test method.")
        logger.test()
    }
}

// MARK: DI

extension APIClient: HasLogger {
   var logger: Loggable {
       logger()
   }
}
