import Foundation
#if canImport(XCTest)
import XCTest

extension SceneKind {
   public var app: XCUIApplication { sceneRunner.app }
}
#endif
