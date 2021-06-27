import Foundation
import XCTest

extension SceneKind {
   public var app: XCUIApplication { sceneRunner.app }
   public var user: SceneRunner.User { sceneRunner.user }
}
