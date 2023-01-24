import Foundation
/**
 * - Description: A scene is a part of a sequence. A sequence has many scenes. A scene can have many steps
 * ## Examples:
 * Sequence([Scene([Step(), Step(), Step()])])
 */
open class Scene: SceneKind {
   public let sceneRunner: SceneRunnerKind
   /**
    * - Parameter scenerunner: A reference to the "sequencer" of the scenes
    */
   public required init(sceneRunner: SceneRunnerKind) {
      self.sceneRunner = sceneRunner
   }
   /**
    * Run the scene
    * - Fixme: ⚠️️ Maybe add throws? so we can log errors etc?
    */
   open func run() {
      fatalError("Must be implemented by super-type")
   }
}
