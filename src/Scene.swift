import Foundation

open class Scene: SceneKind {
   public let sceneRunner: SceneRunnerKind
   /**
    * - Parameter scenerunner: a reference to the "sequencer" of the scenes
    */
   required public init(sceneRunner: SceneRunnerKind) {
      self.sceneRunner = sceneRunner
   }
   /**
    * Run
    */
   public func run(){
      fatalError("Must be implemented by super-type")
   }
}
