// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "TestRunner",
    platforms: [.iOS(.v15), .macOS(.v10_15)],
    products: [
        .library(
            name: "TestRunner",
            targets: ["TestRunner"])
    ],
    dependencies: [
      .package(url: "https://github.com/eonist/Iterator.git", branch: "master"),
      .package(url: "https://github.com/eonist/UITestSugar.git", branch: "master")
    ],
    targets: [
        .target(
            name: "TestRunner",
            dependencies: ["Iterator", "UITestSugar"],
            linkerSettings: [.linkedFramework("XCTest")]
         ),
        .testTarget(
            name: "TestRunnerTests",
            dependencies: ["TestRunner"])
    ]
)
