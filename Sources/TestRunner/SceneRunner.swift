import Foundation
import Iterator
import XCTest
/**
 * - Description: SceneRunner plays through scenes like a playlist
 * - Fixme: ⚠️️ Maybe remove user? add as abstraction somewhere else if needed etc?
 * ## Examples:
 * SceneRunner(scenes: [LoginScene.self, LogoutScene.self],  user: ("John", "abc123")) { Swift.print("All scenes completed 🏁") }.iterate(callBack: { _,_  in })
 */
open class SceneRunner: ArrayIterator<SceneKind.Type>, SceneRunnerKind {
   public lazy var app: XCUIApplication = createXCUIApp() // Convenient accessor to the app
   public let user: User // Stores userName and password
   public var scenes: [SceneKind.Type] { collection } // Stores the scenes in the sequence
   public var complete: Completed // A callback that notifies the user when the sequence has completed
   /**
    * Initiate the scene-runner
    * - Parameters:
    *   - sequence: An array of scenes (to be played out)
    *   - onComplete: A callback that notifies the user when the sequence has completed
    */
   @discardableResult
   public init(sequence: [SceneKind.Type], user: User, onComplete: @escaping Completed) {
      self.user = user
      self.complete = onComplete
      super.init(array: sequence)
   }
}
