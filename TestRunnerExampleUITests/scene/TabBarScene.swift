import Foundation

class TabBarScene: Scene {
    ///
    /// Scene for login the user
    ///
    override func run() {
        Swift.print("start TabBarScene 🎉")
        _ = { // Explorer
            sleep(1)
            let btn1 = NavigationHelper.tabButton(tabButtonType: .exploreButton)
            btn1.tap()
        }()
        _ = { // Search
            sleep(1)
            let btn2 = NavigationHelper.tabButton(tabButtonType: .searchButton)
            Swift.print("btn2 👌")
            btn2.tap()
        }()
        _ = { // Collection
            sleep(1)
            let btn3 = NavigationHelper.tabButton(tabButtonType: .myCollectionButton)
            Swift.print("btn3 👌")
            btn3.tap()
        }()
        Swift.print("logged out 🎉")
    }
}
/**
 * Temp Snippets
 */
extension TabBarScene {
    /**
     *
     */
    func temp(){
        let tabBarsQuery = self.app.tabBars
        //        Swift.print("tabBarsQuery")
        usleep(useconds_t(2.0 * 1000000)) // wait for 0.5 sec
        snapshot("0-\("primary")")
        let btn1 = tabBarsQuery.buttons.element(boundBy: 1)
        Swift.print("btn1")
        btn1.tap()
        usleep(useconds_t(0.5 * 1000000)) // wait for 0.5 sec
        snapshot("1-\("secondary")")
        let btn2 = tabBarsQuery.buttons.element(boundBy: 2)
        btn2.tap()
        usleep(useconds_t(0.5 * 1000000)) // wait for 0.5 sec
        snapshot("2-\("tertiary")")
        let btn3 = tabBarsQuery.buttons.element(boundBy: 3)
        btn3.tap()
        usleep(useconds_t(0.5 * 1000000)) // wait for 0.5 sec
        snapshot("3-\("quaternary")")
    }
    ///
    /// Makes screenshots
    ///
    func temp2(){
        Swift.print("start snapshot ✅")
        //XCUIDevice.shared.orientation = .portrait // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        //        let btn = app.otherElements.children(matching: .button).element
        //        Swift.print("btn 👌:  \(btn)")
        //        btn.tap()
        //snapshot("3-\("detail")") // Here, we'll take the first screenshot
        let tabBarsQuery = app.tabBars
        tabBarsQuery.buttons.element(boundBy: 0).tap()
        snapshot("0-\("primary")")
        tabBarsQuery.buttons.element(boundBy: 1).tap()
        snapshot("1-\("secondary")")
        tabBarsQuery.buttons.element(boundBy: 2).tap()
        snapshot("2-\("tertiary")")
        Swift.print("end snapshot 🎉")
    }
    /**
     *
     */
    func temp3(){
        Swift.print("start TabBarScene 🎉")
        //            let btn0 = NavigationHelper.tabButton(tabButtonType: .homeButton)
        //            Swift.print("btn0 👌")
        //            btn0.tap()
        //            sleep(2)
        //            btn0.tap()
        //            sleep(2)
        sleep(1)
        //        usleep(useconds_t(2.0 * 1000000))
        let btn1 = NavigationHelper.tabButton(tabButtonType: .exploreButton)
        Swift.print("btn1 👌")
        btn1.tap()
        
        
        sleep(1)
        
        let btn2 = NavigationHelper.tabButton(tabButtonType: .searchButton)
        Swift.print("btn2 👌")
        btn2.tap()
        //        usleep(useconds_t(2.0 * 1000000))
        sleep(1)
        let btn3 = NavigationHelper.tabButton(tabButtonType: .myCollectionButton)
        Swift.print("btn3 👌")
        btn3.tap()
        
        Swift.print("logged out 🎉")
    }
}
