import Foundation
import XCTest
/**
 * - Remark: Every call to `XCUIApplication` creates new instance of this object. This is why the `XCUIApplication` object is created at the beginning of the test and stored in the `app` variable.
 */
public protocol SceneRunnerKind {
    func run(scene: SceneKind)
    var app: XCUIApplication { get } // very conventient when testing scenes
    var user: SceneRunner.User { get }
    var scenes: [SceneKind.Type] { get }
    var complete: SceneRunner.Completed { get }
}
