import XCTest

enum TabButtonType: String { case homeButton, exploreButton, searchButton, myCollectionButton }

class NavigationHelper {
    ///
    /// Returns tabbar buttons
    ///
    static func tabButton(tabButtonType: TabButtonType) -> XCUIElement {
        return XCUIApplication().descendants(matching: .any).matching(identifier: tabButtonType.rawValue).element
    }

}
