import Foundation
/**
 * Extending the SceneRunner class to add actions
 */
extension SceneRunner {
   /**
    * Initiates the process of iterating over the scenes.
    * - Description: This method initiates the iteration over the collection
    *                of scenes. It continues to iterate until all scenes have
    *                been processed. The iteration is recursive; for each scene,
    *                it initializes and executes the scene, and if there are no
    *                more scenes left, it triggers the completion handler to
    *                indicate that the iteration is complete.
    * - Remark: Utilizes recursion to manage the iteration of scenes. Each
    *           scene is initialized and executed in sequence.
    * - Remark: Upon completion of all scenes, the `complete` method is
    *           invoked to signify the end of the scene processing.
    */
   public func iterate() {
       while hasNext() { // Check if there is a next scene
         let sceneType: SceneKind.Type = next() // Get the type of the next scene
         let scene: SceneKind = sceneType.init(sceneRunner: self) // Initialize the scene with the current SceneRunner
         run(scene: scene) // Run the scene
      }
      // If there are no more scenes, call the complete function
      complete() // Call onComplete callback aka Scene done
   }
   /**
    * Executes the run method of a given scene.
    * - Description: This method is responsible for executing the run method
    *                of the scene passed to it. It is a crucial part of the
    *                scene iteration process in the `iterate` method, where it
    *                is invoked for each scene in the sequence. This ensures
    *                that each scene is run in the order they appear in the
    *                sequence.
    * - Parameters:
    *   - scene: The scene to be executed, conforming to the `SceneKind` protocol.
    */
   public func run(scene: SceneKind) {
      scene.run() // Call the run function of the scene
   }
}
