import Foundation
import XCTest

extension SceneRunner {
   @objc public func createXCUIApp() -> XCUIApplication{
      let app = XCUIApplication()
      app.launch()
      return app
   }
}
