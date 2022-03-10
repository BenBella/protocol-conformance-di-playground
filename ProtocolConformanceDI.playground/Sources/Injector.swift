import Foundation

public class Injector: InjectorProtocol {
    public static let shared: InjectorProtocol = {
        let global = Injector()
        return global
    }()

    public var mapper = Mapper()
}

#if DEBUG || TEST
    public class MockInjector: InjectorProtocol {
        public static var getInjector: () -> InjectorProtocol? = { nil }
        public var mapper = Mapper()

        public func injectDefaults() {
            Injector.shared.mapper.dump(to: &mapper)
        }
    }
#endif

#if TEST
    public func injector() -> InjectorProtocol {
        return MockInjector.getInjector()!
    }
#else
    public func injector() -> InjectorProtocol {
        return Injector.shared
    }
#endif
