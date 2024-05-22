import Foundation
/**
 * The SceneKind protocol represents a scene in the application.
 * - Abstract: A scene is a self-contained unit of functionality that can be run by the `SceneRunner`
 * - Description: This is particularly useful in the context of UI testing where you need to interact with the app's UI elements
 * - Note: This extension is only available when `XCTest` can be imported, i.e., in a testing context
 */
public protocol SceneKind {
    /**
     * The SceneRunner responsible for running this scene.
     */
    var sceneRunner: SceneRunnerKind { get }
    /**
     * Runs the scene
     */
    func run()
    /**
     * Initializes a new instance of the `SceneKind` protocol
     * - Parameter sceneRunner: The `SceneRunner` responsible for running this scene
     */
    init(sceneRunner: SceneRunnerKind)
}
