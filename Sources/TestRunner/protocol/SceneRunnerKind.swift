import Foundation
#if canImport(XCTest)
import XCTest

public protocol SceneRunnerKind {
   func run(scene: SceneKind)
   var app: XCUIApplication { get set }
   var scenes: [SceneKind.Type] { get }
   var complete: SceneRunner.Completed { get }
   var testCase: XCTestCase? { get }
}
#endif
