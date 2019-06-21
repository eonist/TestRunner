import XCTest
import IteratorIOS
import UITestSugar
import TestRunnerIOS

class TestRunnerUITests: XCTestCase {
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testExample() {
      //      XCTestExtensions.sleep(sec: 2.2)
      //      Test.test()
      //      testThis()
      //      TestApp.test()
      Swift.print("\(SceneKind.self)")
      sleep(sec: 0.2)
      //      testThis()
      let homeNavButton = TabBarHelper.tabButton(tabButtonName: "home")
      Swift.print("homeNavButton:  \(homeNavButton)")
      //      let numOfHittableElements = XCUIApplication().descendants(matching: .any).hittableElements.count
      //      Swift.print("numOfHittableElements:  \(numOfHittableElements)")
      //      let app = XCUIApplication()
      //      let searchedElement = app.filterElements(containing: "Sugar", "500 g").element
      //      let elementExists = searchedElement.exists // true , false
      //      Swift.print("elementExists:  \(elementExists)")
      //      searchedElement.firstMatch.tap()
      //         Use recording to get started writing UI tests.
      //         Use XCTAssert and related functions to verify your tests produce the correct results.
    }
}
