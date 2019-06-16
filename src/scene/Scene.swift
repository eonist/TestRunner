import XCTest

class Scene: SceneKind {
    let sceneRunner: SceneRunnerKind
    required init(sceneRunner: SceneRunnerKind) {
        self.sceneRunner = sceneRunner
    }
    /**
     * Run
     */
    func run(){
        fatalError("Must be implemented by super-type")
    }
}
