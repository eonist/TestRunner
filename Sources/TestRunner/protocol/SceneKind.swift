import Foundation
/**
 * The SceneKind protocol defines the structure and behavior of scenes within an application.
 * - Abstract: A scene is a self-contained unit of functionality that can be
 *             executed by the `SceneRunner`, encapsulating a specific part of the
 *             application's workflow.
 * - Description: This protocol is crucial for UI testing frameworks, allowing
 *                testers to define and manipulate individual scenes. Each scene
 *                represents a distinct and interactive segment of the application,
 *                making it easier to test and debug specific functionalities in
 *                isolation.
 * - Note: The availability of this protocol is contingent upon the importability
 *         of `XCTest`, thus it is primarily used in a testing context where UI
 *         elements are interacted with programmatically.
 */
public protocol SceneKind {
    /**
     * The `SceneRunnerKind` instance that manages the execution of this scene.
     * - Description: This property provides access to the scene runner that
     *                orchestrates the sequence of scenes, ensuring each scene is
     *                run in the correct order and context.
     */
    var sceneRunner: SceneRunnerKind { get }
    /**
     * Runs the scene.
     * - Description: This method is responsible for executing the actions
     *                defined within this scene. It orchestrates the progression
     *                of events that make up the scene, ensuring they are
     *                performed in the intended order and manner.
     */
    func run()
    /**
     * Initializes a new instance of the `SceneKind` protocol.
     * - Description: This initializer is crucial for linking a scene with its
     *                corresponding `SceneRunner`, which manages the execution of
     *                the scene within the application's workflow.
     * - Parameter sceneRunner: The `SceneRunnerKind` instance responsible for
     *                          running this scene.
     */
    init(sceneRunner: SceneRunnerKind)
}
