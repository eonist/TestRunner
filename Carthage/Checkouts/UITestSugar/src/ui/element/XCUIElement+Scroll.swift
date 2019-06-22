import XCTest
/**
 * Scrolling
 */
extension XCUIElement {
   /**
    * Fixme: ⚠️️ write doc
    */
   public func scrollToElement(element: XCUIElement) {
      while !element.visible() {
         swipeUp()
      }
   }
   /**
    * Fixme: ⚠️️ write doc
    */
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
    * - Parameter query: the search query to match parent element
    * - Fixme: ⚠️️ write example
    */
   public static func elements(query: XCUIElementQuery) -> [XCUIElement] {
      return (0..<query.count).indices.map { i in
         let element: XCUIElement = query.children(matching: .any).element(boundBy: i)
         return element
      }
   }
   /**
    * Returns children elements for element
    * - Parameter element: parent element
    */
   public static func elements(element: XCUIElement) -> [XCUIElement] {
      let query = element.children(matching: .any)
      return XCUIElement.elements(query: query)
   }
}
