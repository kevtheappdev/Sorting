import XCTest
@testable import Sorting

final class SortingTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Sorting().text, "Hello, World!")
    }
    
    func testMergeSort() {
        var arr = [5, 3, 7, 4]
        mergeSort(&arr)
        XCTAssertEqual(arr, [3, 4, 5, 7])
        
        arr = [5, 4, 3, 2, 1]
        mergeSort(&arr)
        XCTAssertEqual(arr, [1, 2, 3, 4, 5])
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
