import Foundation
import XCTest

extension SceneKind {
   var app: XCUIApplication { return sceneRunner.app }
   var user: SceneRunner.User { return sceneRunner.user }
}
