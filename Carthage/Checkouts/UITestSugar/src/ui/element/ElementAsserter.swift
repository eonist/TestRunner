import Foundation
import XCTest

public class ElementAsserter {
   /**
    * Asserts if an element is visible on screen (⚠️️ Beta ⚠️️)
    * Fixme: ⚠️️ write example
    */
   public static func visible(element: XCUIElement) -> Bool {
      guard element.exists && !element.frame.isEmpty else { return false }
      return XCUIApplication().windows.element(boundBy: 0).frame.contains(element.frame)
   }
   /**
    * Indicates if the element is currently visible on the screen.  (⚠️️ Beta ⚠️️)
    * ## Examples: XCTAssertTrue(app.buttons.element.isVisible) // ✅
    * - Important: ⚠️️ When accessing properties of XCUIElement, XCTest works differently than in a case of actions on elements, there is no waiting for the app to idle and to finish all animations., This can lead to problems and test flakiness as the test will evaluate a query before e.g. view transition has been completed.
    */
   func isVisible(element: XCUIElement) -> Bool {
     return element.exists && element.isHittable
   }
   /**
    * Asserts if an element exists
    * @Example:
    * XCTAsserstTrue(ElementAsserter.exists(element: app.buttons[“Sign up”])) // ✅
    */
   public static func exists(element: XCUIElement) -> Bool {
      return element.exists
   }
   /**
    * Asserts if an element exists (with timeout)
    * ## Examples:
    * ElementAsserter.exists(element: app.buttons[“Sign up”], timeout: 10)
    */
   func exists(element: XCUIElement, timeout: Double) -> Bool {
      return element.waitForExistence(timeout: timeout)
   }
   /**
    * Asserts if all elements in an array exists
    */
   public static func allExists(elements: [XCUIElement]) -> Bool {
      return elements.first { !$0.exists } == nil
   }
   /**
    * ## Examples
    * hasText(element: app.alerts.element,"Please enter a valid email address")
    */
   public static func hasText(element: XCUIElement, text: String) -> Bool {
      return element.staticTexts[text].exists
   }
}
