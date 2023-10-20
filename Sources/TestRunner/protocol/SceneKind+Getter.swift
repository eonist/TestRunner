import Foundation
#if canImport(XCTest)
import XCTest

extension SceneKind {
   /**
   * The `app` computed property returns the `XCUIApplication` instance associated with the `sceneRunner`
   * - Description: Provides a convenient way to access the `XCUIApplication` instance
   * - Fixme: ⚠️️ Further documentation is needed to explain the usage of `SceneKind` in different scenarios
   */
   public var app: XCUIApplication { 
      sceneRunner.app 
   }
}
#endif
