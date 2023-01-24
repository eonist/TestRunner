[![Tests](https://github.com/eonist/TestRunner/actions/workflows/Tests.yml/badge.svg)](https://github.com/eonist/TestRunner/actions/workflows/Tests.yml)

# TestRunner 🏃

> Simplifies running UI-tests

### How does it work
- Make scenes you can play and get notified on their completion (async)
- Iterate through scenes in sequences
- Reuse common scenes like login and logout
- Works asynchronously

### Consept:
- Step - Usually an anonymous closure with one interaction logic
- Scene - A series of steps
- Sequence - A series of scenes

### Example:
```swift
class SearchScene {
  override run(){
    let searchBar = XTElement.findFirst("SearchBar")
    searchBar.search("Eminem")
    let searchButton = XTElement.findFirst("SearchButton")
    searchButton.tap()
    onComplete()
  }
}
let sequence: [SceneKind.Type] = [LoginScene.self, SearchScene.self, LogoutScene.self]
let runner: SceneRunner = .init(sequence: sequence, onComplete: {})
runner.complete { Swift.print("All scenes completed 🏁") }
runner.iterate() // 🏃
```

### Dependencies:
- [https://github.com/eonist/UITestSugar](https://github.com/eonist/UITestSugar)

### Gotchas:
- Add this framework via XCode SPM-package-manager to the `UITesting-target` in xcode, not main target

### Resources:
- https://medium.com/tauk-blog/using-xctest-and-xctestcase-for-ios-tests-28828c829b3
- https://dr-rost.medium.com/using-xctest-extension-in-a-swift-package-c954b8ed4d62
- https://www.hackingwithswift.com/articles/148/xcode-ui-testing-cheat-sheet

### Todo:
- Add example project (See TabNav-project, playlist-project, UITesting-project) 👈👈👈
- Maybe add ideas from AccessRunner project, might have advanced ways of doing things etc 👈
- Maybe use semaphore to make async -> sync ? 👈
