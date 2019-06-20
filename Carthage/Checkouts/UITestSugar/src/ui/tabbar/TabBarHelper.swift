import XCTest

//public enum TabButtonType: String { case homeButton, exploreButton, searchButton, myCollectionButton }

public class TabBarHelper {
    ///
    /// Returns tabbar buttons
    /// ## Examples: "homeButton", "exploreButton", "searchButton", "myCollectionButton"
    ///
    public static func tabButton(tabButtonName: String) -> XCUIElement {
        return XCUIApplication().descendants(matching: .any).matching(identifier: tabButtonName).element
    }
}
