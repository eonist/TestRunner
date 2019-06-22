import Foundation

open class Scene: SceneKind {
   public let sceneRunner: SceneRunnerKind
   /**
    * - Parameter scenerunner: a reference to the "sequencer" of the scenes
    */
   public required init(sceneRunner: SceneRunnerKind) {
      self.sceneRunner = sceneRunner
   }
   /**
    * Run the scene
    */
   open func run() {
      fatalError("Must be implemented by super-type")
   }
}
