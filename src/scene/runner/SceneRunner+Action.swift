
import Foundation

extension SceneRunner {
    
    func iterate() {
        Swift.print("SceneRunner.iterate")
        if hasNext() {
            let sceneType: SceneKind.Type = next()
            let scene: SceneKind = sceneType.init(sceneRunner: self)
            run(scene: scene)
            iterate()
        } else {
            complete()
        }
    }
    
    func run(scene: SceneKind) {
        scene.run()
    }
}
