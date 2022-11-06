import Foundation

extension SceneRunner {
   /**
    * Call this to begin iterating
    * - Description: It will keep iterating until all items has been iterated over
    */
   public func iterate() {
      if hasNext() {
         let sceneType: SceneKind.Type = next()
         let scene: SceneKind = sceneType.init(sceneRunner: self)
         run(scene: scene)
         iterate()
      } else {
         complete() // Call onComplete callback aka Scene done
      }
   }
   /**
    * Run a scene
    * - Description: Begin scene
    */
   public func run(scene: SceneKind) {
      scene.run()
   }
}
