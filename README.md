# TestRunner 🏃

Simplifies running UI-tests

### How does it work
- Make scenes you can play and get notified on their completion (async)
- Iterate through scenes in sequences
- Reuse common scenes like login and logout
- Works asynchronously

### How do I get it
- Carthage `github "eonist/TestRunner"`
- Manual Open `.xcodeproj`
- CocoaPod (Coming soon)

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
let runner: SceneRunner = .init(sequence: sequence, user: (username:"John", password:"Little") , onComplete: {})
runner.complete { Swift.print("All scenes completed 🏁") }
runner.iterate() // 🏃
```

### Todo:
- Setup repo ✅
- Add carthage support ✅
- Add AsyncIterator as external dep ✅
- Add example project, use Cartfile.private with Spatial etc 👈
