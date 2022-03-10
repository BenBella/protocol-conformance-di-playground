import Foundation
import XCTest

/*
@testable makes internal declarations visible.
Note that anything declared private remains off-limits, even to tests. This is different from Objective-C, where nothing is truly private.
*/
//@testable import AppModule
/*
 It’s easy to assume that when XCTest runs a test case, three things happen:
 1. It creates an instance of the XCTestCase subclass.
 2. It runs the specific test method.
 3. It destroys the XCTestCase instance.
 Or, you may have assumed that XCTest creates one instance to run all the tests in a suite.
 But both are incorrect. Here’s what really happens:
 1. XCTest searches for all classes that inherit from XCTestCase.
 2. For each such class, it finds every test method. These are methods whose names start with test, take no arguments, and have no return value.
 3. For each such test method, it creates an instance of the class. Using Objective-C runtime magic, it remembers which test method that instance will run.
 4. XCTest collects the instances of the subclass into a Test Suite.
 5. When it’s finished creating all test cases, only then does XCTest begin running them.
 */

class UnitTest: XCTestCase {
    var injector: MockInjector!

    override func setUp() {
        // Every object you create in setUp() should be destroyed in tearDown().
        super.setUp()
        injector = MockInjector()
        MockInjector.getInjector = { [unowned self] in self.injector }
    }

    override func tearDown() {
        super.tearDown()
        MockInjector.getInjector = { nil }
    }
    
    //func test_zero() {
    //    XCTFail("This is a check of our infrastructure. It confirms that our basic test plumbing is correct.")
    //}
}

/*
@testable import TestApp

class Tests: UnitTest {
        
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
        
    func testWillStartUpAction() {
        let testMock = TestMock()
        injector.mapper.mapSingleton(TestMockable.self) { testMock }
        // Etc..
    }
}
*/
