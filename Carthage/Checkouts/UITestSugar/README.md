# UITestSugar
Sugar for UITesting

### How do I get it
- Carthage `github "eonist/UITestSugar"`
- Manual Open `.xcodeproj`
- CocoaPod (Coming soon)

### Example:
```swift
let app = XCUIApplication()
let searchedElement = app.filterElements(containing: "Sugar", "500 g").element
searchedElement.exists // true , false
searchedElement.firstMatch.tap()
```

### Todo:
- Add tests
