// Importing the Foundation framework, which provides the base layer of functionality for apps and frameworks in Swift.
import Foundation

/**
 * - Remark: A scene is a part of a sequence. This could be a part of a game, a movie, or any other sequence of events.
 * - Remark: A sequence has many scenes. This is a collection of scenes that make up a larger narrative or process.
 * - Remark: A scene can have many steps. These are the individual actions or events that occur within a scene.
 * ## Examples:
 * Sequence([Scene([Step(), Step(), Step()])]) // This is an example of a sequence with a single scene, which itself contains three steps.
 */

// This is an open class named Scene, which means it can be subclassed outside of its defining module.
// It conforms to the SceneKind protocol.
open class Scene: SceneKind {
   // This is a public variable named sceneRunner of type SceneRunnerKind.
   // It's used to run the scenes in the sequence.
   public var sceneRunner: SceneRunnerKind
   
   /**
    * This is the initializer for the Scene class.
    * - Parameter scenerunner: A reference to the "sequencer" of the scenes. This is the object that controls the order and execution of the scenes.
    */
   public required init(sceneRunner: SceneRunnerKind) {
      // Assigning the sceneRunner parameter to the sceneRunner property of the Scene instance.
      self.sceneRunner = sceneRunner
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