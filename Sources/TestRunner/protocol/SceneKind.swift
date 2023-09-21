import Foundation
/**
 * The SceneKind protocol represents a scene in the application.
 * A scene is a self-contained unit of functionality that can be run by the SceneRunner.
 */
public protocol SceneKind {
        /**
     * The SceneRunner responsible for running this scene.
     */
    var sceneRunner: SceneRunnerKind { get }

    /**
     * Runs the scene.
     */
    func run()

    /**
     * Initializes a new instance of the SceneKind protocol.
     * - Parameter sceneRunner: The SceneRunner responsible for running this scene.
     */
    init(sceneRunner: SceneRunnerKind)
}
