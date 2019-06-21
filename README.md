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
let albumCoverSequence: [SceneKind.Type] = [LoginScene.self, SearchScene.self, LogoutScene.self]
albumCoverSequence.run() // 🏃
albumCoverSequence.first { $0.type == SearchScene.self }.onComplete { Swift.print("SearchScene ✅") }
albumCoverSequence.onComplete { Swift.print("All scenes completed 🏁") }
```

### Todo:
- Setup repo ✅
- Add example project 👈
- Add carthage support ✅
- Add AsyncIterator as external dep ✅
