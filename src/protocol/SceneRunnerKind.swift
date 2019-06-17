import Foundation
import XCTest

public protocol SceneRunnerKind {
    func run(scene: SceneKind)
    var app: XCUIApplication { get }
    var user: SceneRunner.User { get }
    var scenes: [SceneKind.Type] { get }
    var complete: SceneRunner.Completed { get }
}
