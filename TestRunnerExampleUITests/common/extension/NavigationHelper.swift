import Foundation

public enum TabButtonType: String { case homeButton, exploreButton, searchButton, myCollectionButton }

public class NavigationHelper {
    ///
    /// Returns tabbar buttons
    ///
    public static func tabButton(tabButtonType: TabButtonType) -> XCUIElement {
        return XCUIApplication().descendants(matching: .any).matching(identifier: tabButtonType.rawValue).element
    }
}
