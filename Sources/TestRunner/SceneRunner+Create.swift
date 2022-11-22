import Foundation
#if canImport(XCTest)
import XCTest

extension SceneRunner {
   /**
    * Very conventient when testing scenes, as we create only one ref to app, or else things doesn't work
    * - Important: ⚠️️ Every call to `XCUIApplication` creates new instance of this object. This is why the `XCUIApplication` object is created at the beginning of the test and stored in the `app` variable.
    * - Note: Anywhere in the app we can also access this and other apps by knowing their bundle id: private static let springboardApp = XCUIApplication(bundleIdentifier: "com.apple.springboard")
    */
   @objc open func createXCUIApp() -> XCUIApplication {
      let app = XCUIApplication()
      app.launch()
      return app
   }
}
#endif
