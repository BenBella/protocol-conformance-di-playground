import Foundation

public protocol Loggable {
    func test()
}

public final class Logger: Loggable {
    
    public init() {}
    
    public func test() {
        print("Logger test method.")
    }
}
