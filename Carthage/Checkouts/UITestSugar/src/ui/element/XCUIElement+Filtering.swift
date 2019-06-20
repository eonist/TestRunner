import XCTest
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
        // Fixme: ⚠️️ Use .map here
        for label in labels {
            cells = cells.containing(NSPredicate(format: "label CONTAINS %@", label))
        }
        return cells
    }
    /**
     * Find element that has either of the labels provided in labels
     * ## Examples:
     * let app = XCUIApplication()
     * let searchedElement = app.filterElements(containing: "Sugar", "500 g").element
     * searchedElement.exists // true , false
     * searchedElement.firstMatch.tap()
     */
    public func filterElements(containing labels: String...) -> XCUIElementQuery {
        var elements = self.otherElements
        // Fixme: ⚠️️ Use .map here
        for label in labels {
            elements = elements.containing(NSPredicate(format: "label CONTAINS %@", label))
        }
        return elements
    }
}
