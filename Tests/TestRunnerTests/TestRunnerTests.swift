import XCTest
@testable import TestRunner

final class TestRunnerTests: XCTestCase {

    /// A test case class for the `TestRunner` module.
    ///
    /// Contains unit tests that validate the behavior of `SceneRunner` and related classes.

    func testSceneRunnerExecutesScenes() {
        // Arrange
        class TestScene: Scene {
            static var didRun = false
            override func run() {
                TestScene.didRun = true
                sceneRunner.complete()
            }
        }
        let runner = SceneRunner(sequence: [TestScene.self]) {
            // Completion handler
        }

        // Act
        runner.iterate()

        // Assert
        XCTAssertTrue(TestScene.didRun, "TestScene should have been executed")
    }
}
