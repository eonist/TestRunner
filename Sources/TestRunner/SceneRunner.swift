import Foundation
import Iterator
#if canImport(XCTest)
import XCTest
/**
 * - Description: `SceneRunner` plays through scenes like a playlist
 * ## Examples:
 * SceneRunner(scenes: [LoginScene.self, LogoutScene.self]) { Swift.print("All scenes completed 🏁") }.iterate(callBack: { _,_  in })
 */
open class SceneRunner: ArrayIterator<SceneKind.Type>, SceneRunnerKind {
   public lazy var app: XCUIApplication = createXCUIApp() // Convenient accessor to the app
   public var scenes: [SceneKind.Type] { collection } // Stores the scenes in the sequence
   public var complete: Completed // A callback that notifies the user when the sequence has completed
   /**
    * Initiate the scene-runner
    * - Parameters:
    *   - sequence: An array of scenes (to be played out)
    *   - onComplete: A callback that notifies the user when the sequence has completed
    */
   @discardableResult
   public init(sequence: [SceneKind.Type], onComplete: @escaping Completed) {
      self.complete = onComplete
      super.init(array: sequence)
   }
}
#endif
