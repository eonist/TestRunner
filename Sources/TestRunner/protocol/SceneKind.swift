import Foundation
/**
 *  `SceneKind` is an extension that provides a convenient way to access the `XCUIApplication` instance.
 * This is particularly useful in the context of UI testing where you need to interact with the app's UI elements.
 * The SceneKind protocol represents a scene in the application.
 * A scene is a self-contained unit of functionality that can be run by the SceneRunner.
 * - Note: This extension is only available when XCTest can be imported, i.e., in a testing context.
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
     * Initializes a new instance of the SceneKind protocol.
     * - Parameter sceneRunner: The SceneRunner responsible for running this scene.
     */
    init(sceneRunner: SceneRunnerKind)
}
