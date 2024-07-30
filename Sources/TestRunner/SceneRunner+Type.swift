import Foundation
/**
 * `SceneRunner` Extension
 * - Description: This extension adds additional functionality to the `SceneRunner` class.
 */
extension SceneRunner {
    /**
     * `Completed` Typealias
     * - Description: This typealias is used to define a callback function signature for completion events in the `SceneRunner` class. It specifies a function that is invoked when a sequence of scenes has been fully processed and completed.
     * - Details: The function defined by this typealias takes no parameters and does not return a value. It is typically used to perform cleanup, logging, or update UI elements upon the completion of scene sequences.
     * - Usage:
     * ```
     * let completion: SceneRunner.Completed = {
     *     // Code to execute upon completion
     * }
     * ```
     */
    public typealias Completed = () -> Void
}
