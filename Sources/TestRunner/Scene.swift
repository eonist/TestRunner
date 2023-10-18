// Importing the Foundation framework, which provides the base layer of functionality for apps and frameworks in Swift.
import Foundation
/**
 * A scene is a part of a sequence and represents a specific moment in time within a larger narrative or process, such as a game level or a movie scene. It can have many steps, which are the individual actions or events that occur within the scene.
 * ## Examples:
 * Sequence([Scene([Step(), Step(), Step()])]) // This is an example of a sequence with a single scene, which itself contains three steps.
 */
open class Scene: SceneKind {
   /**
    * Used to run the scenes in the sequence.
    */
   public var sceneRunner: SceneRunnerKind
   /**
    * This is the initializer for the Scene class.
    * - Parameter scenerunner: A reference to the "sequencer" of the scenes. This is the object that controls the order and execution of the scenes.
    */
   public required init(sceneRunner: SceneRunnerKind) {
      self.sceneRunner = sceneRunner  // Assigning the sceneRunner parameter to the sceneRunner property of the Scene instance.
   }
   /**
    * This is a method to run the scene.
    * - Fixme: ⚠️️ Maybe add throws? so we can log errors etc? This is a note suggesting that the method could be updated to throw errors, which would allow for better error handling and logging.
    */
   open func run() {
      // This is a placeholder implementation of the run method.
      // It simply throws a fatal error, indicating that this method must be overridden by any subclass of Scene.
      fatalError("Must be implemented by super-type")
   }
}
