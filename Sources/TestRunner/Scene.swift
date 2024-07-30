import Foundation
/**
 * A scene is a component of a sequence and encapsulates a distinct moment or phase within a broader narrative or operational process, such as a level in a video game or a scene in a film. Each scene comprises multiple steps, which are the discrete actions or events that unfold during the scene.
 * ## Examples:
 * Sequence([Scene([Step(), Step(), Step()])]) // This example illustrates a sequence containing a single scene, which in turn includes three steps.
 */
open class Scene: SceneKind {
   /**
    * This method is responsible for executing the actions defined within this scene as part of a larger sequence managed by `SceneRunnerKind`. It orchestrates the progression of steps or events that make up the scene, ensuring they are performed in the intended order and manner.
    */
   public var sceneRunner: SceneRunnerKind
   /**
    * Initializes a new instance of the Scene class.
    * - Parameter sceneRunner: A reference to the SceneRunnerKind instance that manages the sequence and execution of scenes. This parameter is crucial as it links the scene with its controlling runner, enabling coordinated progression through a series of scenes.
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
      fatalError("Must be implemented by super-type")
   }
}
