import Foundation
/**
 * Text
 */
extension XCUIElement {
    /**
     * Removes any current text in the field before typing in the new value
     * - Parameter text: the text to enter into the field
     */
    public func clearAndTypeText(text: String) {
        guard let stringValue = self.value as? String else {
            XCTFail("Tried to clear and enter text into a non string value")
            return
        }
        self.tap()
        for _ in 0..<stringValue.count {
            self.typeText(XCUIKeyboardKey.delete.rawValue)
        }
        if stringValue.isEmpty {
            self.tap()
        }
        self.typeText(text)
    }
}
