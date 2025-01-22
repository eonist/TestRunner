import XCTest
@testable import TestRunner

final class TestRunnerTests: XCTestCase {

    // fixme add doc
    
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
