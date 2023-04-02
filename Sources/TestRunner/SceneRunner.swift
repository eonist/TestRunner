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
   public var testCase: XCTestCase?
   public var launchArgs: [String]
   public var launchEnvironment: [String: String]
   public var complete: Completed // A callback that notifies the user when the sequence has completed
   /**
    * Initiate the scene-runner
    * - Fixme: ⚠️️ add support for launchOptions as well?
    * - Parameters:
    *   - sequence: An array of scenes (to be played out)
    *   - onComplete: A callback that notifies the user when the sequence has completed
    *   - testCase: - Fixme: ⚠️️ add doc
    *   - launchEnvironment: - Fixme: ⚠️️ add doc
    *   - launchArgs: - Fixme: ⚠️️ add doc
    */
   @discardableResult public init(sequence: [SceneKind.Type], testCase: XCTestCase? = nil, launchArgs: [String] = [], launchEnvironment: [String: String] = [:], onComplete: @escaping Completed) {
      self.testCase = testCase
      self.launchArgs = launchArgs
      self.launchEnvironment = launchEnvironment
      self.complete = onComplete
      super.init(array: sequence)
   }
}
#endif
