#if canImport(XCTest)
import XCTest
/**
 * Public protocol that defines the requirements for a SceneRunner.
 * This protocol outlines the essential functionalities that any SceneRunner must implement to manage and execute scenes within a testing framework. It ensures that all SceneRunners can handle scene execution, manage application state, and integrate with XCTest functionalities.
 */
public protocol SceneRunnerKind {
   /**
    * Executes the `run` method of a given scene, which is part of the scene management process.
    * - Parameter scene: The scene to be executed.
    */
   func run(scene: SceneKind)
   /**
    * Holds the instance of `XCUIApplication` that represents the application under test.
    */
   var app: XCUIApplication { get set }
   /**
    * Contains the types of scenes that the SceneRunner is capable of running.
    */
   var scenes: [SceneKind.Type] { get }
   /**
    * Stores the completion handler that is called when all scenes have been processed.
    */
   var complete: SceneRunner.Completed { get }
   /**
    * - Description: Optionally holds a reference to an `XCTestCase` if one is
    *               associated with the SceneRunner, facilitating integration
    *               with XCTest.
    */
   var testCase: XCTestCase? { get }
}
#endif
