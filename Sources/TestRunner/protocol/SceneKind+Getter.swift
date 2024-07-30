import Foundation
#if canImport(XCTest)
import XCTest

extension SceneKind {
   /**
   * The `app` computed property returns the `XCUIApplication` instance associated with the `sceneRunner`
   * - Description: Provides a convenient way to access the `XCUIApplication` instance
   * - Note: The `SceneKind` protocol can be utilized in various testing scenarios. For instance, it can be used to simulate user interactions in a UI test or to verify the state of the app at different stages of the scene lifecycle. This flexibility allows developers to create comprehensive test suites that cover a wide range of user experiences.
   */
   public var app: XCUIApplication { 
      sceneRunner.app 
   }
}
#endif
