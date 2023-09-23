import XCTest
#if canImport(XCTest)
// Public protocol that defines the requirements for a SceneRunner
public protocol SceneRunnerKind {
   /**
    * Method to run a specific scene
    */
   func run(scene: SceneKind)
   /**
    * Property to hold the application under test
    */
   var app: XCUIApplication { get set }
   /**
    * Array to hold the different types of scenes that can be run
    */
   var scenes: [SceneKind.Type] { get }
   /**
    * Property to hold the completion handler for the SceneRunner
    */
   var complete: SceneRunner.Completed { get }
   /**
    * Optional property to hold the test case if one is associated with the SceneRunner
    */
   var testCase: XCTestCase? { get }
}
#endif
