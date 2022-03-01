import XCTest
@testable import Human

final class HumanTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Human().text, "Hello, World!")
    }
}
