import Foundation
import XCTest

extension SceneKind {
   public var app: XCUIApplication { sceneRunner.app }
   /**
    * - Fixme: ⚠️️ Deperecate this?
    */
   public var user: SceneRunner.User { sceneRunner.user }
}
