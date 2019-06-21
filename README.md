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

### Note:
When you make frameworks that import XCTest, you need to add the correct framework search path in build settings see: [https://stackoverflow.com/questions/44665656/creating-a-framework-that-uses-xctest](https://stackoverflow.com/questions/44665656/creating-a-framework-that-uses-xctest) 

### Todo:
- Add tests
