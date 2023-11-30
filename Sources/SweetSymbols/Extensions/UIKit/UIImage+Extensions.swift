#if canImport(UIKit)
import UIKit

public extension UIImage {
    
    /// Creates an image object that contains a system symbol image.
    ///
    /// - Parameter name: The name of the system SFSymbol image.
    convenience init?(symbolName name: SFSymbols) {
        self.init(systemName: name.rawValue)
    }
    
    /// Creates an image object that contains a system symbol image appropriate for the specified traits.
    ///
    /// - Parameters:
    ///   - name: The name of the system SFSymbol image.
    ///   - traitCollection: The traits associated with the intended environment for the image. Use this parameter to ensure that the correct variant of the image is loaded. If you specify nil, this method uses the traits associated with the main screen.
    convenience init?(symbolName name: SFSymbols, compatibleWith traitCollection: UITraitCollection?) {
        self.init(systemName: name.rawValue, compatibleWith: traitCollection)
    }
    
    /// Creates an image object that contains a system symbol image with the specified configuration.
    ///
    /// - Parameters:
    ///   - name: The name of the system SFSymbol image.
    ///   - configuration: The image configuration the system applies to the image
    ///
    /// - Returns: The object containing the image variant that matches the specified configuration data, or nil if no suitable image was found.
    convenience init?(symbolName name: SFSymbols, withConfiguration configuration: Configuration?) {
        self.init(systemName: name.rawValue, withConfiguration: configuration)
    }
    
    /// Creates an image object that contains a system symbol image with the configuration and variable value you specify.
    ///
    /// - Parameters:
    ///   - name: The name of the system SFSymbol image.
    ///   - value: The value the system uses to customize the image content, between 0 and 1. configuration
    ///   - configuration: The image configuration the system applies to the image.
    /// - Returns: The object containing the image variant that matches the specified configuration data, or nil if no suitable image was found.
    @available(iOS 16.0, *)
    convenience init?(symbolName name: SFSymbols, variableValue value: Double, configuration: Configuration? = nil) {
        self.init(systemName: name.rawValue, variableValue: value, configuration: configuration)
    }
}
#endif
