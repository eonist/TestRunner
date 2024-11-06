import Foundation
#if canImport(XCTest)
import XCTest
/**
 * Extending `SceneRunner` to include testing functionalities
 */
extension SceneRunner {
   /**
    * Creates a single reference to the `XCUIApplication`, essential for consistent application state during tests.
    * - Abstract: This method initializes the `XCUIApplication` and stores it
    *             in the `app` property. This approach prevents the creation of
    *             multiple instances during tests, ensuring that all test actions
    *             and verifications are performed on the same application instance.
    * - Description: This method is responsible for creating and launching an
    *                instance of `XCUIApplication`. It ensures that only a single
    *                instance of the application is created and used throughout
    *                the testing process, providing a consistent application state
    *                for accurate testing results.
    * - Remark: Instantiating `XCUIApplication` directly creates a new application
    *           instance each time. To maintain test consistency, it is initialized
    *           once and reused throughout the testing process.
    * - Remark: This method also allows for the interaction with other applications
    *           by using their specific bundle identifiers. For instance, the
    *           SpringBoard application can be accessed with `XCUIApplication(bundleIdentifier:
    *           "com.apple.springboard")`, facilitating tests that involve multiple
    *           applications.
    */
   @objc open func createXCUIApp() -> XCUIApplication {
      let app: XCUIApplication = .init() // Creates a new instance of XCUIApplication
      app.launch() // launches it
      return app // and returns it
   }
}
#endif
// - Fixme: ⚠️️ We could enhance this by launching the app with a specific bundleID. 
// For example, to launch the mobile safari app, we could use its bundle id like this:
// app = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
// app.launch()
