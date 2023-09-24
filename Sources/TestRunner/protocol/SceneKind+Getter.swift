import Foundation
#if canImport(XCTest)
import XCTest

/**
 * `SceneKind` is an extension that provides a convenient way to access the `XCUIApplication` instance.
 * This is particularly useful in the context of UI testing where you need to interact with the app's UI elements.
 * The `app` computed property returns the `XCUIApplication` instance associated with the `sceneRunner`.
 * - Note: This extension is only available when XCTest can be imported, i.e., in a testing context.
 * - Fixme: ⚠️️ Further documentation is needed to explain the usage of `SceneKind` in different scenarios.
 */
extension SceneKind {
   public var app: XCUIApplication { sceneRunner.app }
}
#endif
