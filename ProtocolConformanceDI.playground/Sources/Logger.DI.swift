import Foundation

extension InjectorProtocol {
    public var logger: () -> Loggable { return self.mapper.getFactory()! }
}

protocol HasLogger {
    var logger: Loggable { get }
}

extension HasLogger {
    var logger: () -> Loggable {
        return injector().logger
    }
}
