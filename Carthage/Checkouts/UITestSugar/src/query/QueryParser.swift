import Foundation
import XCTest

public class QueryParser {
   /**
    * findElement(query:...,identifier:"Featured Playlists-View all")
    */
   public static func findElement(query: XCUIElementQuery, identifier: String) -> XCUIElement? {
      let elements: [XCUIElement] = QueryParser.elements(query: query)
      //Swift.print("elements.count:  \(elements.count)")
      let result = elements.first { $0.identifier == identifier }
      return result
   }
   /**
    * Returns elements in query
    * - Parameter query: the search query to match parent element
    * - Fixme: ⚠️️ write example
    */
   public static func elements(query: XCUIElementQuery) -> [XCUIElement] {
      return (0..<query.count).indices.map { i in
         let element: XCUIElement = query.children(matching: .any).element(boundBy: i)
         return element
      }
   }
}
