import Foundation
import XCTest

public class ElementModifier {
   /**
    * Removes any current text in the field before typing in the new value
    * - Parameter text: the text to enter into the field
    * - Fixme: ⚠️️ Consider making this a try error method
    */
   public static func clearAndTypeText(element: XCUIElement, text: String) {
      guard let stringValue = element.value as? String else {
         XCTFail("Tried to clear and enter text into a non string value")
         return
      }
      element.tap()
      for _ in 0..<stringValue.count { // Fixme: ⚠️️ do .forEach here
         element.typeText(XCUIKeyboardKey.delete.rawValue)
      }
      if stringValue.isEmpty { element.tap() }
      element.typeText(text)
   }
   /**
    * Scrolling
    * Fixme: ⚠️️ write doc
    */
   public static func scrollToElement(element: XCUIElement) {
      while !ElementAsserter.visible(element: element) {
         element.swipeUp()
      }
   }
}
