
import SwiftUI

@available(iOS 14.0, *)
public extension Label where Title == Text, Icon == Image {
    
    /// Creates a label with a system icon image and a title generated from a localized string.
    /// 
    /// - Parameters:
    ///   - titleKey: A title generated from a localized string.
    ///   - symbolName: The name of the system SFSymbol image.
    init(titleKey: LocalizedStringKey, symbolName: SFSymbols) {
        self.init(titleKey, systemImage: symbolName.rawValue)
    }
}
