import Foundation
import Iterator
#if canImport(XCTest) // Conditional import for XCTest
import XCTest
/**
 * `SceneRunner` is a class that "plays" through scenes like a playlist.
 * - Description: `SceneRunner` is a utility class that sequentially
 *                executes a series of scenes, which are types conforming to
 *                `SceneKind`. It can be used to simulate a sequence of events
 *                or actions in an application, making it a useful tool for
 *                automated testing or demoing purposes.
 * - Note: It is a subclass of `ArrayIterator` with `SceneKind.Type` as the
 *         generic parameter.
 * - Note: It also conforms to `SceneRunnerKind` protocol.
 * ## Examples:
 * SceneRunner(scenes: [LoginScene.self, LogoutScene.self]) { Swift.print("All scenes completed 🏁") }.iterate(callBack: { _,_  in })
 */
open class SceneRunner: ArrayIterator<SceneKind.Type>, SceneRunnerKind {
    /**
     * Convenient accessor to the app
     * - Description: This is a lazy property that creates and returns an
     *                instance of `XCUIApplication`. This instance is used to
     *                interact with the application's user interface for testing
     *                purposes.
     */
    public lazy var app: XCUIApplication = createXCUIApp()
    /**
     * Stores the scenes in the sequence
     * - Description: An array of `SceneKind.Type` that represents the
     *                sequence of scenes to be executed by the `SceneRunner`.
     */
    public var scenes: [SceneKind.Type] { collection }
    /**
     * Optional XCTestCase instance
     * - Description: An optional reference to an `XCTestCase` instance that
     *                allows the `SceneRunner` to integrate with XCTest for
     *                additional testing functionalities, such as performance
     *                testing or asserting conditions.
     */
    public var testCase: XCTestCase?
    /**
     * A callback that notifies the user when the sequence has completed
     * - Description: This is a callback function that is triggered when the
     *                sequence of scenes has been fully executed. It allows for
     *                any necessary cleanup or follow-up actions to be performed
     *                after the sequence has completed.
     */
    public var complete: Completed
    /**
    * Initializes the scene-runner with a sequence of scenes, an optional test case, and a completion handler.
    * - Abstract: This initializer sets up the scene-runner to execute a series
    *             of scenes, which are types conforming to `SceneKind`. It
    *             optionally accepts a test case for integrating with XCTest
    *             functionalities. The completion handler is called once all
    *             scenes have been processed.
    * - Description: This initializer is used to create an instance of
    *                SceneRunner. It takes a sequence of scenes, an optional test
    *                case, and a completion handler as parameters. The sequence
    *                of scenes is an array of types conforming to `SceneKind`
    *                which represents the scenes to be executed. The optional
    *                test case can be used for additional testing capabilities
    *                during scene execution. The completion handler is invoked
    *                when all scenes in the sequence have been completed.
    * - Fixme: ⚠️️ Consider adding support for launch options to customize the
    *          app's launch configuration.
    * - Parameters:
    *   - sequence: An array of `SceneKind.Type` representing the scenes
    *               to be executed.
    *   - onComplete: A callback that is invoked when all scenes in the
    *                 sequence have been completed.
    *   - testCase: An optional `XCTestCase` instance that can be used for
    *               additional testing capabilities during scene execution.
    */
    @discardableResult
    public init(sequence: [SceneKind.Type], testCase: XCTestCase? = nil, onComplete: @escaping Completed) { /*, launchArgs: [String] = [], launchEnvironment: [String: String] = [:]*/
        self.testCase = testCase // Assigns the provided testCase to the `testCase` property of the `SceneRunner`
        // self.launchArgs = launchArgs // fix: remove these?  //  - launchEnvironment: A dictionary representing the environment variables to be set for the application launch
        // self.launchEnvironment = launchEnvironment // fix: remove these? //  - launchArgs: An array of strings representing the launch arguments to be passed to the application
        self.complete = onComplete // Assigns the provided completion handler to the `complete` property of the `SceneRunner`
        super.init(array: sequence) // Initializes the superclass with the provided sequence of scenes
    }
}
#endif
