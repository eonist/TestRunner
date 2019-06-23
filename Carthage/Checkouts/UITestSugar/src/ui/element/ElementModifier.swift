import Foundation
import XCTest
/**
 * TextField manipulation
 */
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
/**
 * Alternate Clear and type methodology
 */
extension ElementModifier {
   /**
    * Returns `value` as a String
    * ## Examples:
    * app.textFields.element.text
    * - Note: It will fail if `value` is not a `String` type.
    */
   private static func getText(element: XCUIElement) -> String {
      guard let text = element.value as? String else {
         preconditionFailure("Value: \(String(describing: element.value)) is not a String")
      }
      return text
   }
   /**
    * Remove text from textField or secureTextField.
    * ## Examples:
    * clearTextField(element: app.textFields.element)
    */
   private static func clearTextField(element: XCUIElement) {
      var previousValueLength = 0
      while getText(element: element).count != previousValueLength { // Keep removing characters until text is empty, or removing them is not allowed.
         previousValueLength = getText(element: element).count
         element.typeText("\u{8}")
      }
   }
   /**
    * Remove text from textField and enter new value.
    * - Note: Useful if there is chance that the element contains text already.
    * - Note: This helper method will execute `clearTextField` and then type the provided string.
    * - Parameter text: Text to type after clearing old value.
    * ## Examples:
    * clear(element: app.textFields.element, andType: "text")
    */
   public static func clearAndType(element: XCUIElement, text: String) {
      element.tap()
      clearTextField(element: element)
      element.typeText(text)
   }
}
/**
 * Slider
 */
extension ElementModifier {
   /**
    * ## Examples:
    * slide(slider: app.sliders.element, amount: 0.7)
    */
   public static func slide(slider: XCUIElement, amount: CGFloat) {
      slider.adjust(toNormalizedSliderPosition: amount)
   }
}
extension ElementModifier {
   /**
    * ## Examples:
    * pick(pickerWheel: app.pickerWheels.element, value: "Picker Wheel Item Title")
    */
   public static func pick(pickerWheel: XCUIElement, value: String) {
      pickerWheel.adjust(toPickerWheelValue: value)
   }
}
