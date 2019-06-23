import Foundation
import XCTest

public class QueryParser {
   /**
    * Returns first element by identifier
    * ## Examples:
    * firstElement(query: app.descendants(matching: .any), identifier:"Featured Playlists-View all")
    * - Fixme: ⚠️️ use lazy map combined with first?
    * - Parameter type: .other (UIView), .cell (UICollectionViewCell or UITableViewCell), .button (UIButton)
    */
   public static func firstElement(query: XCUIElementQuery, identifier: String, type: XCUIElement.ElementType = .any) -> XCUIElement? {
      let elements: [XCUIElement] = QueryParser.elements(query: query, type: type)
      return elements.first { $0.identifier == identifier }
   }
   /**
    * Returns elements in query
    * - Parameter query: the search query to match parent element
    * - Fixme: ⚠️️ write example
    */
   public static func elements(query: XCUIElementQuery, type: XCUIElement.ElementType = .any) -> [XCUIElement] {
      return (0..<query.count).indices.map { i in
         query.children(matching: type).element(boundBy: i)// bound by is a way to access element by index
      }
   }
   /**
    * Returns element of ElementType
    * - Parameter: .button, .scrollBar, .checkButton etc
    * ## Example:
    * app.element(query: app.children, type: .button)
    */
   public static func firstElement(query: XCUIElementQuery, type: XCUIElement.ElementType) -> XCUIElement {
      return query.children(matching: type).element
   }
   /**
    * ## Example:
    * let firstElement = app.filterElements(query: app.children, labels: ["Sugar", "500 g"]).first?.element
    * firstElement.tap()
    */
   public static func firstElement(query: XCUIElementQuery, labels: [String] ) -> XCUIElement? {
      return labels.map { label in
         query.containing(NSPredicate(format: "label CONTAINS %@", label))
      }.compactMap { $0 }.first?.element
   }
   /**
    * Find element that has either of the labels provided in strings
    * ## Examples:
    * let app = XCUIApplication()
    * let element: AppParser.filterElements(query: app.children, strings: ["Sugar", "500 g"], type: .any).element
    * element.exists // true , false
    * element.first.tap()
    * // Cells
    * let cells = AppParser.children(query: app.children, strings: "Sugar", "500 g", .cells).element
    * cells.exists // true , false
    * cells.firstMatch.tap()
    */
   public static func children(query: XCUIElementQuery, strings: [String], type: XCUIElement.ElementType = .any) -> [XCUIElement] {
      // Fixme: ⚠️️ Use .map or reduce or flatmap here
      var retVal: [XCUIElement] = []
      for string in strings {
         let elementQuery: XCUIElementQuery = query.containing(NSPredicate(format: "label CONTAINS %@", string))
         let elements: [XCUIElement] = QueryParser.elements(query: elementQuery)
         retVal += elements
      }
      return retVal
   }
}
