import Foundation
import XCTest
/**
 * Parser
 */
public class ElementParser {
   /**
    * Returns children elements for element
    * - Parameter element: parent element
    */
   public static func children(element: XCUIElement, type: XCUIElement.ElementType = .any) -> [XCUIElement] {
      let query: XCUIElementQuery = element.children(matching: type)
      return QueryParser.elements(query: query)
   }
   /**
    *
    */
   func descendants() {
      // continue here
   }
}
