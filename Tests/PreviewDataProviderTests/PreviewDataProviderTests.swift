import XCTest
@testable import PreviewDataProvider

final class PreviewDataProviderTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(PreviewDataProvider().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}