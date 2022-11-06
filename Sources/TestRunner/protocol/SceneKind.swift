import Foundation
/**
 * - Description: Scene API
 */
public protocol SceneKind {
    var sceneRunner: SceneRunnerKind { get }
    func run()
    init(sceneRunner: SceneRunnerKind)
}
