import Foundation

extension SFSymbols: Codable {}

extension SFSymbols: CaseIterable {
	public static var allCases: [SFSymbols] {
		var symbols: [SFSymbols] = []

		if #available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *) {
			symbols += allCases_1_0
		}

		if #available(iOS 13.1, macOS 11.0, tvOS 13.0, watchOS 6.1, *) {
			symbols += allCases_1_1
		}

		if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
			symbols += allCases_2_0
		}

		if #available(iOS 14.2, macOS 11.0, tvOS 14.2, watchOS 7.1, *) {
			symbols += allCases_2_1
		}

		if #available(iOS 14.5, macOS 11.3, tvOS 14.5, watchOS 7.4, *) {
			symbols += allCases_2_2
		}

		if #available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *) {
			symbols += allCases_3_0
		}

		if #available(iOS 15.1, macOS 12.0, tvOS 15.1, watchOS 8.1, *) {
			symbols += allCases_3_1
		}

		if #available(iOS 15.2, macOS 12.1, tvOS 15.2, watchOS 8.3, *) {
			symbols += allCases_3_2
		}

		if #available(iOS 15.4, macOS 12.3, tvOS 15.4, watchOS 8.5, *) {
			symbols += allCases_3_3
		}

		if #available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *) {
			symbols += allCases_4_0
		}

		if #available(iOS 16.1, macOS 13.0, tvOS 16.1, watchOS 9.1, *) {
			symbols += allCases_4_1
		}

		if #available(iOS 16.4, macOS 13.3, tvOS 16.4, watchOS 9.4, *) {
			symbols += allCases_4_2
		}

		if #available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *) {
			symbols += allCases_5_0
		}

		return symbols
	}
}
