import XCTest
/**
 * Filtering
 */
extension XCUIApplication {
   /**
    * ## Example:
    * let firstElement = app.filterElements(query: self.otherElements, containing: "Sugar", "500 g").first?.element
    * firstElement.tap()
    */
   public func filterElements2(query: XCUIElementQuery, containing labels: String...) -> [XCUIElementQuery] {
      return labels.map { label in
         query.containing(NSPredicate(format: "label CONTAINS %@", label))
      }.compactMap { $0 }
   }
   /**
    * Returns element of ElementType
    * - Parameter: .button, .scrollBar, .checkButton etc
    * ## Example:
    * app.element(query: self.otherElements, type: .button)
    */
   public func element(query: XCUIElementQuery, type: XCUIElement.ElementType) -> XCUIElement {
      return query.children(matching: type).element
   }
}
/**
 * ⚠️️ DEPRECATE ⚠️️
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
      var cells = self.cells// otherElements, lables, sliders etc
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
    * let searchedElement: XCUIElementQuery = app.filterElements(containing: "Sugar", "500 g").element
    * searchedElement.exists // true , false
    * searchedElement.firstMatch.tap()
    */
   public func filterElements(containing labels: String...) -> XCUIElementQuery {
      var elementQueries = self.otherElements
      // Fixme: ⚠️️ Use .map here
      for label in labels {
         elementQueries = elementQueries.containing(NSPredicate(format: "label CONTAINS %@", label))
      }
      return elementQueries
   }
}
