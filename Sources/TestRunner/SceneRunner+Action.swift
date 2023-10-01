import Foundation
/**
 * Extending the SceneRunner class to add actions
 */
extension SceneRunner {
   /**
    * Call this to begin iterating over the scenes.
    * - Description: This function will keep iterating until all scenes have been iterated over.
    * It uses recursion to iterate over the scenes. If there is a next scene, it initializes and runs it.
    * If there are no more scenes, it calls the complete function to signal that all scenes have been run.
    */
   public func iterate() {
      // Check if there is a next scene
      if hasNext() {
         let sceneType: SceneKind.Type = next() // Get the type of the next scene
         let scene: SceneKind = sceneType.init(sceneRunner: self) // Initialize the scene with the current SceneRunner
         run(scene: scene) // Run the scene
         iterate() // Recursively call iterate to run the next scene
      } else {  // If there are no more scenes, call the complete function
         complete() // Call onComplete callback aka Scene done
      }
   }
   /**
    * Run a scene
    * - Description: This function takes a scene of type SceneKind and calls its run function.
    * It is used in the iterate function to run each scene.
    * - Parameters:
    *   - scene: The scene to run, of type `SceneKind`.
    */
   public func run(scene: SceneKind) {
      scene.run() // Call the run function of the scene
   }
}
