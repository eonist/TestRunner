import Foundation
import Iterator_IOS
//import XCTest
/**
 * Abstract: SceneRunner plays through scenes like a playlist
 * ## Examples:
 * SceneRunner(scenes: [LoginScene.self, LogoutScene.self],  user: (" ", " ")) {Swift.print("All scenes completed 🏁") }.iterate(callBack: { _,_  in })
 */
public class SceneRunner: ArrayIterator<SceneKind.Type>, SceneRunnerKind {
//   lazy var app: XCUIApplication = { // Convenient accessor to the app
//      let app = XCUIApplication()
//      app.launch()
//      return app
//   }()
   public let user: User // Stores userName and password
   public var scenes: [SceneKind.Type] { return collection } // stores the scenes in the sequence
   public var complete: Completed // A callback that notifies the user when the sequence has completed
   /**
    * Initiate the scene-runner
    * - Parameter sequence: An array of scenes (to be played out)
    * - Parameter onComplete: A callback that notifies the user when the sequence has completed
    */
   @discardableResult
   public init(sequence: Array<SceneKind.Type>, user: User, onComplete:@escaping Completed) {
      self.user = user
      self.complete = onComplete
      super.init(array: sequence)
   }
}
