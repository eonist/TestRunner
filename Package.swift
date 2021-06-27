// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TestRunner",
    platforms: [.iOS(.v12), .macOS(.v10_13)],
    products: [
        .library(
            name: "TestRunner",
            targets: ["TestRunner"]),
    ],
    dependencies: [
      .package(url: "https://github.com/eonist/Iterator.git", .branch("master")),
      .package(url: "https://github.com/eonist/UITestSugar.git", .branch("master"))
   ],
    targets: [
        .target(
            name: "TestRunner",
            dependencies: ["Iterator", "UITestSugar"]),
        .testTarget(
            name: "TestRunnerTests",
            dependencies: ["TestRunner"]),
    ]
)
