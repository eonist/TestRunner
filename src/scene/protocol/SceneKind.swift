import XCTest

protocol SceneKind {
    var sceneRunner: SceneRunnerKind { get }
    func run()
    init(sceneRunner: SceneRunnerKind)
}

extension SceneKind {
    var app: XCUIApplication { return sceneRunner.app }
    var user: SceneRunner.User { return sceneRunner.user }
}
