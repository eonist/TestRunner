// Importing necessary libraries
import Foundation
import Iterator
#if canImport(XCTest) // Conditional import for XCTest
import XCTest
/**
 * `SceneRunner` is a class that plays through scenes like a playlist.
 * It is a subclass of `ArrayIterator` with `SceneKind.Type` as the generic parameter.
 * It also conforms to `SceneRunnerKind` protocol.
 *
 * ## Examples:
 *
 * SceneRunner(scenes: [LoginScene.self, LogoutScene.self]) { Swift.print("All scenes completed 🏁") }.iterate(callBack: { _,_  in })
 */
open class SceneRunner: ArrayIterator<SceneKind.Type>, SceneRunnerKind {
    // Convenient accessor to the app
    public lazy var app: XCUIApplication = createXCUIApp()
    // Stores the scenes in the sequence
    public var scenes: [SceneKind.Type] { collection }
    // Optional XCTestCase instance
    public var testCase: XCTestCase?
    // A callback that notifies the user when the sequence has completed
    public var complete: Completed
    /**
    * Initiate the scene-runner
    * - Fixme: ⚠️️ Add support for launchOptions as well?
    * - Parameters:
    *   - sequence: An array of scenes (to be played out)
    *   - onComplete: A callback that notifies the user when the sequence has completed
    *   - testCase: An optional XCTestCase instance that can be used to run tests on the scenes
    *   - launchEnvironment: A dictionary representing the environment variables to be set for the application launch
    *   - launchArgs: An array of strings representing the launch arguments to be passed to the application
    */
    @discardableResult
    public init(sequence: [SceneKind.Type], testCase: XCTestCase? = nil/*, launchArgs: [String] = [], launchEnvironment: [String: String] = [:]*/, onComplete: @escaping Completed) {
        self.testCase = testCase
        // self.launchArgs = launchArgs
        // self.launchEnvironment = launchEnvironment
        self.complete = onComplete
        super.init(array: sequence)
    }
}
#endif
