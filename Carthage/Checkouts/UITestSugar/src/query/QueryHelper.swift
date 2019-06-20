import XCTest

public class QueryHelper {
    /**
     * ⚠️️ beta ⚠️️
     * ## Example:
     * hittableElements(query: XCUIApplication().descendants(matching: .any)).count // n
     */
    public static func hittableElements(query: XCUIElementQuery) -> [XCUIElement] {
        return (0..<query.count).indices.map { i in
            let element = query.children(matching: .other).element(boundBy: i)
            return element.isHittable ? element : nil
        }.compactMap { $0 }
    }
}
/**
 * Extension
 */
extension XCUIElementQuery {
    /**
     * ⚠️️ beta ⚠️️
     * ## Examples:
     * XCUIApplication().descendants(matching: .any).hittableElements.count // n
     */
    public var hittableElements: [XCUIElement] {
        return QueryHelper.hittableElements(query:self)
    }
}
