// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "TestRunner", // The name of the package
    platforms: [.iOS(.v15), .macOS(.v12)], // The platforms the package supports
    products: [
        .library(
            name: "TestRunner", // The name of the library product
            targets: ["TestRunner"]) // The targets that the product depends on
    ],
    dependencies: [
      .package(url: "https://github.com/eonist/Iterator.git", branch: "master"), // The dependency on the Iterator package
      .package(url: "https://github.com/eonist/UITestSugar.git", branch: "master") // The dependency on the UITestSugar package
    ],
    targets: [
        .target(
            name: "TestRunner", // The name of the target
            dependencies: ["Iterator", "UITestSugar"], // The dependencies of the target
            linkerSettings: [.linkedFramework("XCTest")] // The linker settings for the target
         ),
        .testTarget(
            name: "TestRunnerTests", // The name of the test target
            dependencies: ["TestRunner"]) // The dependencies of the test target
    ]
)
