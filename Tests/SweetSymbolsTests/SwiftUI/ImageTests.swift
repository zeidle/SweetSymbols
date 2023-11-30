import XCTest
import SwiftUI

@testable import SweetSymbols

final class ImageTests: XCTestCase {

	func testInit() {
		let symbol = SFSymbols.pencil
		let actualResult = Image(systemName: symbol.rawValue)
		let expectedResult = Image(symbolName: symbol)

		XCTAssertEqual(actualResult, expectedResult, "Failed to create Image using standard initialization for the `pencil` name.")
	}

	func testInitWithVariableValue() {
		let symbol = SFSymbols.pencil
		if #available(iOS 16.0, tvOS 16.0, watchOS 9.0, *) {
			let actualResult = Image(systemName: symbol.rawValue, variableValue: 1.0)
			let expectedResult = Image(symbolName: symbol, variableValue: 1.0)

			XCTAssertEqual(expectedResult, actualResult, "Failed to create Image using init with variableValue for the 'pencil' name")
		} else {
			XCTFail("iOS 16.0, tvOS 16.0 or watchOS 9.0 is required to test SFSymbols")
		}
	}
}
