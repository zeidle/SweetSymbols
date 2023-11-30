import XCTest
import UIKit

@testable import SweetSymbols

final class UIImageTests: XCTestCase {

	func testIncorrectSymbol() throws {
		let wrongSymbols = SFSymbols.allCases.map {
			($0.rawValue, UIImage(systemName: $0.rawValue))
		}.filter { $0.1 == nil }.map { $0.0 }

		XCTAssertTrue(wrongSymbols.isEmpty, "Incorrect SFSymbols names: \(wrongSymbols)")
	}

	func testInit() {
		let symbol = SFSymbols.pencil
		let expectedResult = UIImage(systemName: symbol.rawValue)
		let actualResult = UIImage(symbolName: symbol)

		XCTAssertEqual(expectedResult, actualResult, "Failed to create UIImage using standard initialization for the `pencil` name.")
	}

	func testInitWithConfiguration() {
		let symbol = SFSymbols.pencil
		let expectedResult = UIImage(systemName: symbol.rawValue, withConfiguration: .none)
		let actualResult = UIImage(symbolName: symbol, withConfiguration: .none)

		XCTAssertEqual(expectedResult, actualResult, "Failed to create UIImage using init with configuration for the 'pencil' name")
	}

	func testInitWithTraitCollection() {
		let symbol = SFSymbols.pencil
		let expectedResult = UIImage(systemName: symbol.rawValue, compatibleWith: .current)
		let actualResult = UIImage(symbolName: symbol, compatibleWith: .current)

		XCTAssertEqual(expectedResult, actualResult, "Failed to create UIImage using init with traitCollection for the 'pencil' name")
	}

	func testInitWithVariableValue() {
		let symbol = SFSymbols.pencil
		if #available(iOS 16.0, tvOS 16.0, watchOS 9.0, *) {
			let actualResult = UIImage(systemName: symbol.rawValue, variableValue: 1.0)
			let expectedResult = UIImage(symbolName: symbol, variableValue: 1.0)

			XCTAssertEqual(expectedResult, actualResult, "Failed to create UIImage using init with variableValue for the 'pencil' name")
		} else {
			XCTFail("iOS 16.0, tvOS 16.0 or watchOS 9.0 is required to test SFSymbols")
		}
	}
}

