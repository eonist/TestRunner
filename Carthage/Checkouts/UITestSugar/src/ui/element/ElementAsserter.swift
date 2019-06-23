import Foundation
import XCTest

public class ElementAsserter {
   /**
    * Fixme: ⚠️️ write doc
    */
   public static func visible(element: XCUIElement) -> Bool {
      guard element.exists && !element.frame.isEmpty else { return false }
      return XCUIApplication().windows.element(boundBy: 0).frame.contains(element.frame)
   }
   /**
    * @Example:
    * XCTAssertTrue(ElementAsserter(element: app.buttons[“Sign up”]).exists) // ✅
    */
   func exists(element: XCUIElement) -> Bool {
      return element.exists
   }
   /**
    * 
    */
   func allExists(elements: [XCUIElement]) -> Bool {
      return elements.first { !$0.exists } == nil
   }
}
