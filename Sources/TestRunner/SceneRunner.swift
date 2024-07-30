import Foundation
import Iterator
#if canImport(XCTest) // Conditional import for XCTest
import XCTest
/**
 * `SceneRunner` is a class that "plays" through scenes like a playlist.
 * It is a subclass of `ArrayIterator` with `SceneKind.Type` as the generic parameter.
 * It also conforms to `SceneRunnerKind` protocol.
 *
 * ## Examples:
 *
 * SceneRunner(scenes: [LoginScene.self, LogoutScene.self]) { Swift.print("All scenes completed 🏁") }.iterate(callBack: { _,_  in })
 */
open class SceneRunner: ArrayIterator<SceneKind.Type>, SceneRunnerKind {
    /**
     * Convenient accessor to the app
     */
    public lazy var app: XCUIApplication = createXCUIApp()
    /**
     * Stores the scenes in the sequence
     */
    public var scenes: [SceneKind.Type] { collection }
    /**
     * Optional XCTestCase instance
     */
    public var testCase: XCTestCase?
    /**
     * A callback that notifies the user when the sequence has completed
     */
    public var complete: Completed
    /**
    * Initializes the scene-runner with a sequence of scenes, an optional test case, and a completion handler.
    * This initializer sets up the scene-runner to execute a series of scenes, which are types conforming to `SceneKind`. It optionally accepts a test case for integrating with XCTest functionalities. The completion handler is called once all scenes have been processed.
    * - Fixme: ⚠️️ Consider adding support for launch options to customize the app's launch configuration.
    * - Parameters:
    *   - sequence: An array of `SceneKind.Type` representing the scenes to be executed.
    *   - onComplete: A callback that is invoked when all scenes in the sequence have been completed.
    *   - testCase: An optional `XCTestCase` instance that can be used for additional testing capabilities during scene execution.
    */
    @discardableResult
    public init(sequence: [SceneKind.Type], testCase: XCTestCase? = nil, onComplete: @escaping Completed) { /*, launchArgs: [String] = [], launchEnvironment: [String: String] = [:]*/
        self.testCase = testCase
        // self.launchArgs = launchArgs // fix: remove these?  //  - launchEnvironment: A dictionary representing the environment variables to be set for the application launch
        // self.launchEnvironment = launchEnvironment // fix: remove these? //  - launchArgs: An array of strings representing the launch arguments to be passed to the application
        self.complete = onComplete
        super.init(array: sequence)
    }
}
#endif
