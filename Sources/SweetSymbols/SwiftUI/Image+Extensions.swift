import SwiftUI

public extension Image {
    
    /// Creates a system symbol image.
    /// 
    /// - Parameter symbolName: The name of the system SFSymbol image.
    init(symbolName name: SFSymbols) {
        self.init(systemName: name.rawValue)
    }
    
    /// Creates a system symbol image with a variable value.
    ///
    /// - Parameters:
    ///   - name: The name of the system SFSymbol image.
    ///   - variableValue: An optional value between 0.0 and 1.0 that the rendered image can use to customize its appearance, if specified. If the symbol doesn’t support variable values, this parameter has no effect. Use the SF Symbols app to look up which symbols support variable values.
    @available(iOS 16.0, *)
    init?(systemName name: SFSymbols, variableValue: Double?) {
        self.init(systemName: name.rawValue, variableValue: variableValue)
    }
}
