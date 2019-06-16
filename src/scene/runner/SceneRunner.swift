import XCTest
/**
 * Abstract: SceneRunner plays through scenes like a playlist
 * ## Examples:
 * SceneRunner(scenes: [LoginScene.self, LogoutScene.self],  user: (" ", " ")) {Swift.print("All scenes completed 🏁") }.iterate(callBack: { _,_  in })
 */
class SceneRunner: ArrayIterator<SceneKind.Type>, SceneRunnerKind {
    lazy var app: XCUIApplication = {
        let app = XCUIApplication()
        setupSnapshot(app) // Setup snapshot framework
        app.launch()
        return app
    }()
    let user: User
    var scenes: [SceneKind.Type] { return collection }
    var complete: Completed
    /**
     * Initiate the scene-runner
     * Parameter sequence: An array of scenes (to be played out)
     */
    @discardableResult
    init(sequence: Array<T>, user: User, onComplete:@escaping Completed) {
        self.user = user
        self.complete = onComplete
        super.init(array: sequence)
    }
}
