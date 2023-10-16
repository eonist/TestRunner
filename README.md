![mit](https://img.shields.io/badge/License-MIT-brightgreen.svg)
![platform](https://img.shields.io/badge/Platform-iOS/macOS-blue.svg)
![Lang](https://img.shields.io/badge/Language-Swift%205-orange.svg)
[![SPM compatible](https://img.shields.io/badge/SPM-compatible-4BC51D.svg?style=flat)](https://github.com/apple/swift)
[![Tests](https://github.com/eonist/TestRunner/actions/workflows/Tests.yml/badge.svg)](https://github.com/eonist/TestRunner/actions/workflows/Tests.yml)
[![codebeat badge](https://codebeat.co/badges/5ad762ee-862a-4267-a69e-9fd8ed9ffce6)](https://codebeat.co/projects/github-com-eonist-testrunner-master)

# TestRunner 🏃

> Simplifies running UI-tests

### Description:
- TestRunner is a Swift package that simplifies running UI tests for iOS and macOS.
- It allows you to create scenes that can be played and receive notifications upon their completion.
- You can iterate through scenes in sequences, reuse common scenes such as `LoginScene` and `LogoutScene`, and operate asynchronously.

### How does it work
TestRunner allows you to:
- Create scenes that you can play and receive notifications upon their completion (asynchronously).
- Iterate through scenes in sequences.
- Reuse common scenes such as `LoginScene` and `LogoutScene`.
- Operate asynchronously.

### How it looks:  
Here is a QA Test prototype for debugging a playlist feature:  
  
<img width="320" alt="img" src="https://github.com/stylekit/img/blob/master/test_af.gif?raw=true">

## Key Concepts:
- **Step**: A single interaction logic, usually encapsulated in an anonymous closure.
- **Scene**: A series of steps.
- **Sequence**: A series of scenes.

## Installation

You can install TestRunner using Swift Package Manager. Simply add the following line to your `Package.swift` file:

```swift
.package(url: "https://github.com/eonist/TestRunner.git", from: "1.0.0")
```

Then add `TestRunner` as a dependency for your target:

```swift
.target(
    name: "MyTarget",
    dependencies: [
        "TestRunner",
    ]
),
```

Alternatively, you can add TestRunner to your project using Xcode. Simply go to `File > Swift Packages > Add Package Dependency` and enter the URL of this repository.


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
runner.app.launch()
runner.iterate() // 🏃
```

### Dependencies:
- [https://github.com/eonist/UITestSugar](https://github.com/eonist/UITestSugar)

> **Warning**  
> Add this framework via XCode SPM-package-manager to the `UITesting-target` in xcode, not main target

## Resources:
- [Using XCTest and XCTestCase for iOS Tests](https://medium.com/tauk-blog/using-xctest-and-xctestcase-for-ios-tests-28828c829b3): A comprehensive guide on utilizing XCTest and XCTestCase for iOS testing.

- [Using XCTest Extension in a Swift Package](https://dr-rost.medium.com/using-xctest-extension-in-a-swift-package-c954b8ed4d62): An informative post detailing the integration of XCTest extension within a Swift package.

- [Xcode UI Testing Cheat Sheet](https://www.hackingwithswift.com/articles/148/xcode-ui-testing-cheat-sheet): A handy cheat sheet offering quick reference for Xcode UI testing.


### Todo:
- Add example project (See TabNav-project, playlist-project, UITesting-project) 👈👈👈
- Maybe add ideas from AccessRunner project, might have advanced ways of doing things etc 👈
- Maybe use semaphore to make async -> sync ? 👈
- Clean up UITestSugar
