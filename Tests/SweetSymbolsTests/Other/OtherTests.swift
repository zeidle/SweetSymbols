import XCTest
@testable import SweetSymbols

final class SweetSymbolsTests: XCTestCase {
    
    private class Client: Codable {
        let symbolName: SFSymbols
        
        init(symbolName: SFSymbols) {
            self.symbolName = symbolName
        }
    }
    
    func testDecoding() throws {
        let decoder = JSONDecoder()
        let jsonData = Data(#"{"symbolName":"circle"}"#.utf8)
        
        let client: Client = try decoder.decode(Client.self, from: jsonData)
        
        let actualSymbolName = client.symbolName
        let expectedSymbolName = SFSymbols.circle
        
        XCTAssertEqual(actualSymbolName, expectedSymbolName)
    }
    
    func testEncoding() throws {
        let encoder = JSONEncoder()
        let client = Client(symbolName: .circle)

        let expectedData = Data(#"{"symbolName":"circle"}"#.utf8)
        let actualResult = try encoder.encode(client)
        
        XCTAssertEqual(expectedData, actualResult)
    }
}
