# SweetSymbols

SweetSymbols is a Swift package that provides a convenient way to work with SF Symbols, Apple's set of over 3,000 icons designed for consistency across various Apple platforms. This package enhances the integration of SF Symbols into your Swift projects, making it easy to create images and labels with system symbol icons.

## Installation

Supported platform are: `iOS 13.0`, `macOS 11.0`, `tvOS 13.0` and `watchOS 6.0` and above

To integrate `SweetSymbols` into your Xcode project using **Swift Package Manager**, follow these steps:

1. Open your project in Xcode.
2. Navigate to the "File" menu and select "Swift Packages" -> "Add Package Dependency..."
3. Enter the URL of the SweetSymbols repository: `https://github.com/zeidle/SweetSymbols.git`
4. Click "Next" and follow the on-screen instructions to complete the installation.

## Usage

### Creating System Symbol Images

`SweetSymbols` simplifies the process of creating UIImage and Image objects with SFSymbols. Use the symbolName initializer to create images:

```swift
let myImage = UIImage(symbolName: .circle)
// or
let myImage = Image(symbolName: .circle)
```

### Creating Labels with System Icons

For `SwiftUI` projects, `SweetSymbols` extends the Label view to easily create labels with a system icon and a title generated from a localized string:

```swift
let myLabel = Label(titleKey: "SomeLocalizedKey", symbolName: .circle)
```

### Additional Image Configuration

`SweetSymbols` provides additional convenience initializers for UIImage with specific configurations:

```swift
// Specify a trait collection
let myImage = UIImage(symbolName: .arrowtriangleUpFill, compatibleWith: myTraitCollection)

// Specify a configuration
let myImage = UIImage(symbolName: .arrowtriangleUpFill, withConfiguration: myConfiguration)

// Specify a variable value and configuration (requires iOS 16.0)
if #available(iOS 16.0, *) {
    let myImage = UIImage(symbolName: .arrowtriangleUpFill, variableValue: 0.5, configuration: myConfiguration)
}
```

# Requirements

•   `iOS 13.0`
•   `macOS 11.0`
•   `tvOS 13.0`
•   `watchOS 6.0`

# License

`SweetSymbols` is available under the MIT license. See the [LICENSE](https://github.com/zeidle/SweetSymbols/blob/main/LICENSE) file for more details

# Author

## wip

