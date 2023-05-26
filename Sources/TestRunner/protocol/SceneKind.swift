import Foundation
/**
 * - Description: Scene API
 * - Fixme: ⚠️️ add more doc
 */
public protocol SceneKind {
    var sceneRunner: SceneRunnerKind { get }
    func run()
    init(sceneRunner: SceneRunnerKind)
}
