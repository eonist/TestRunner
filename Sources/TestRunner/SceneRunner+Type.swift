import Foundation
/**
 * Extension
 */
extension SceneRunner {
   /**
    * Stores userName and password
    * - Fixme: ⚠️️ Maybe remove user? add as abstraction somewhere else if needed etc?
    */
    public typealias User = (username: String, password: String)
    /**
     * A callback that notifies the user when the sequence has completed
     */
    public typealias Completed = () -> Void
}
