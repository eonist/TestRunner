# TestRunner 🏃

Simplifies running UI-tests 

### How does it work
- Make scenes you can play and get notified on their completion (async)
- Iterate through schenes in sequences
- Reuse common scenes like login and logout

### How do I get it
- Carthage `github "eonist/TestRunner"`
- Manual Open `.xcodeproj`
- CocoaPod (Coming soon)

### Example:
```swift
let albumCoverSequence: [SceneKind.Type] = [LoginScene.self, SearchScene.self, LogoutScene.self]
albumCoverSequence.run() // 🏃
albumCoverSequence.first { $0.type == SearchScene.self }.onComplete { Swift.print("SearchScene ✅") }
albumCoverSequence.onComplete { Swift.print("All scenes completed 🏁") }
```

### Todo:
- Setup repo 👈
- Add example project
- Add carthage support
