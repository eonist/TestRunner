import Foundation
/**
 * `SceneRunner` Extension
 * - Description: This extension adds additional functionality to the `SceneRunner` class.
 */
extension SceneRunner {
    /**
     * `Completed` Typealias
     * This typealias defines a callback function that is called when a sequence has completed.
     * The function takes no parameters and returns no value.
     * Usage:
     * ```
     * let completion: SceneRunner.Completed = {
     *     // Code to execute upon completion
     * }
     * ```
     */
    public typealias Completed = () -> Void
}
