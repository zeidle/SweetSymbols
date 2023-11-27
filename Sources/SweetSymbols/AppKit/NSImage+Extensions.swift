#if canImport(AppKit)
import AppKit

extension NSImage {
    
    @available(macOS 11.0, *)
    /// Creates a symbol image with the system symbol name and accessibility description you specify.
    /// - Parameters:
    ///   - name: The name of the system SFSymbol image
    ///   - description: The accessibility description for the symbol image, if any.
    /// - Returns: A symbol image based on the name you specify; otherwise nil if the method couldn’t find a suitable image.
    convenience init?(symbolName name: SFSymbols, accessibilityDescription description: String?) {
        self.init(systemSymbolName: name.rawValue, accessibilityDescription: description)
    }
    
    @available(macOS 13.0, *)
    /// Creates a symbol image with the system symbol name and variable value you specify.
    ///
    /// - Parameters:
    ///   - name: The name of the system SFSymbol image
    ///   - value: The value the system uses to customize the symbol’s content, between 0 and 1.
    ///   - description: The accessibility description for the symbol image, if any.
    convenience init?(symbolName name: SFSymbols, variableValue value: Double, accessibilityDescription description: String?) {
        self.init(systemSymbolName: name.rawValue, variableValue: value, accessibilityDescription: description)
    }
}
#endif
