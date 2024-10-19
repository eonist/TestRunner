import Foundation
/**
 * A scene is a component of a sequence and encapsulates a distinct moment or phase within a broader narrative or operational process, such as a level in a video game or a scene in a film. Each scene comprises multiple steps, which are the discrete actions or events that unfold during the scene.
 * ## Examples:
 * Sequence([Scene([Step(), Step(), Step()])]) // This example illustrates a sequence containing a single scene, which in turn includes three steps.
 */
open class Scene: SceneKind {
   /**
    * This method is responsible for executing the actions defined within this scene as part of a larger sequence managed by `SceneRunnerKind`. It orchestrates the progression of steps or events that make up the scene, ensuring they are performed in the intended order and manner.
    * - Description: This method is invoked by the SceneRunner to execute the steps or actions defined within this scene. It is an essential part of the scene execution process, ensuring that each step is performed in the correct order and manner. The specific actions performed during the execution of this method are defined by the individual scene implementation.
    */
   public var sceneRunner: SceneRunnerKind
   /**
    * Initializes a new instance of the Scene class.
    * - Description: This initializer is used to create an instance of the
    *                Scene class. It takes a SceneRunnerKind instance as a
    *                parameter, which is responsible for managing the sequence
    *                and execution of scenes. This linkage allows for a
    *                coordinated progression through a series of scenes.
    * - Parameter sceneRunner: A reference to the SceneRunnerKind instance that
    *                          manages the sequence and execution of scenes.
    *                          This parameter is crucial as it links the scene
    *                          with its controlling runner, enabling coordinated
    *                          progression through a series of scenes.
    */
   public required init(sceneRunner: SceneRunnerKind) {
      self.sceneRunner = sceneRunner  // Assigning the sceneRunner parameter to the sceneRunner property of the Scene instance.
   }
   /**
    * This is a method to run the scene.
    * - Description: This method is responsible for initiating the execution
    *                of the scene. It is called by the SceneRunner during the
    *                iteration process. The specific actions performed during
    *                the execution of this method are defined by the individual
    *                scene implementation.
    * - Fixme: ⚠️️ Maybe add throws? so we can log errors etc? This is a note
    *          suggesting that the method could be updated to throw errors,
    *          which would allow for better error handling and logging.
    */
   open func run() {
      // This is a placeholder implementation of the run method.
      fatalError("Must be implemented by super-type")
   }
}
