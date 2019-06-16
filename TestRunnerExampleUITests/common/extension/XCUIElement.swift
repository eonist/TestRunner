import XCTest

extension XCUIElement {
    /**
     * Removes any current text in the field before typing in the new value
     * - Parameter text: the text to enter into the field
     */
    public func clearAndTypeText(text: String) {
        guard let stringValue = self.value as? String else {
            XCTFail("Tried to clear and enter text into a non string value")
            return
        }
        self.tap()
        for _ in 0..<stringValue.count {
            self.typeText(XCUIKeyboardKey.delete.rawValue)
        }
        if stringValue.isEmpty {
            self.tap()
        }
        self.typeText(text)
    }
}
/**
 * Scrolling
 */
extension XCUIElement {
    public func scrollToElement(element: XCUIElement) {
        while !element.visible() {
            swipeUp()
        }
    }
    public func visible() -> Bool {
        guard self.exists && !self.frame.isEmpty else { return false }
        return XCUIApplication().windows.element(boundBy: 0).frame.contains(self.frame)
    }
    /**
     * findElement(query:...,identifier:"Featured Playlists-View all")
     */
    public func findElement(query: XCUIElementQuery, identifier: String) -> XCUIElement? {
        let elements: [XCUIElement] = XCUIElement.elements(query:query)
//        Swift.print("elements.count:  \(elements.count)")
        let result = elements.first(where: { $0.identifier == identifier })
        return result
    }
    /**
     * Returns elements in query
     */
    static func elements(query: XCUIElementQuery) -> [XCUIElement] {
        return (0..<query.count).indices.map { i in
            let element: XCUIElement = query.children(matching: .any).element(boundBy: i)
            return element
        }
    }
    /**
     * Returns elements in element
     */
    public static func elements(element: XCUIElement) -> [XCUIElement] {
        let query = element.children(matching: .any)
        return XCUIElement.elements(query: query)
    }
}
/**
 * Filtering
 */
extension XCUIApplication {
    /**
     * Find cell by providing labels
     * ## Examples:
     * let app = XCUIApplication()
     * let searchedCell = app.filterCells(containing: "Sugar", "500 g").element
     * searchedCell.exists // true , false
     * searchedCell.firstMatch.tap()
     */
    public func filterCells(containing labels: String...) -> XCUIElementQuery {
        var cells = self.cells
        for label in labels {
            cells = cells.containing(NSPredicate(format: "label CONTAINS %@", label))
        }
        return cells
    }
    public func filterElements(containing labels: String...) -> XCUIElementQuery {
        var elements = self.otherElements
        for label in labels {
            elements = elements.containing(NSPredicate(format: "label CONTAINS %@", label))
        }
        return elements
    }
}
