import Foundation

class FeaturePlayListScene: Scene {
    override func run() {
//        sleep(1)
//        let btn0 = NavigationHelper.tabButton(tabButtonType: .homeButton) // make sure your in the home
//        Swift.print("btn0:  \(btn0)")
//        btn0.tap()
        Swift.print("start Feature playlist  👈")
        sleep(2)
//        Swift.print("start swiping 👌")
//        let app = XCUIApplication()
        
        
//        scrollViewsQuery.otherElements.collectionViews.containing(.cell, identifier:"LEMONADE, by Beyoncé").element.swipeUp()
//        let item = scrollViewsQuery.children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .other).element(boundBy: 0)
//        item.tap()
//
//        Swift.print("item:  \(item)")
//        app.navigationBars["Suggested New Tracks"].buttons["Back"]/*@START_MENU_TOKEN@*/.press(forDuration: 1.4);/*[[".tap()",".press(forDuration: 1.4);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        
//        let app = XCUIApplication()
//        let backButton = app.navigationBars["Featured Playlists"].buttons["Back"]
//        backButton.tap()
        
//        let scrollViewsQuery = app.scrollViews
//        scrollViewsQuery.otherElements.staticTexts["Featured Playlists"].tap()
        
//        let element = scrollViewsQuery.children(matching: .other).element(boundBy: 7).children(matching: .other).element.children(matching: .other).element(boundBy: 0)
//        element.tap()
//        backButton.tap()
//        element.tap()
//        let button = XCUIApplication().tables.cells["Purchase Cell"].buttons["Buy Item"].elementBoundByIndex(1)
       
//        let cell: XCUIElement = self.app.collectionViews.cells.element(boundBy: 6)
//        Swift.print("cell:  \(cell)")
//        self.app.collectionViews.firstMatch.scrollToElement(element: cell)
       
        
//        Swift.print("querry:  \(querry)")
//        self.app.collectionViews.firstMatch.scrollToElement(element: querry)
//        cell.childrenMatchingType
//        let querry2 = self.app.collectionViews.element(boundBy: 5)
//        let btn = self.app.collectionViews.descendantsMatchingType(.cell)
//        Swift.print("querry2:  \(querry2)")
//        sleep(1)
//        let btn: XCUIElement = querry2.firstMatch
//        Swift.print("btn:  \(btn)")
//        btn.tap()
        
//        let btn1: XCUIElement = querry.firstMatch
//        Swift.print("btn1:  \(btn1)")
//        let btn2: XCUIElement = querry.element(boundBy: 1)
//        Swift.print("btn2:  \(btn2)")
        
//        app.tables["table's accessibilityIdentifier"].cells.allElementsBoundByIndex.first?.tap()
//        cell.element(boundBy: 2).tap()
//        sleep(2)
        
        //🏀
            //click the section
//        cell.swipeDown()
//        sleep(2)
//        btn2.tap()
//        btn1.tap()
//        sleep(3)
//        Swift.print("cell:  \(cell)")
        
//        let scrollViewsQuery = XCUIApplication().scrollViews
//        let element = scrollViewsQuery.children(matching: .other).element(boundBy: 7).children(matching: .other).element.children(matching: .other).element(boundBy: 0)
//        element.tap()
//        sleep(4)
//        scrollViewsQuery.otherElements.staticTexts["Featured Playlists"].tap()
        let scrollViewsQuery = app.scrollViews
        Swift.print("app.buttons.count:  \(app.buttons.count)")
        Swift.print("app.collectionViews.otherElements.count:  \(app.collectionViews.otherElements.count)")
        Swift.print("app.collectionViews.buttons.count:  \(app.collectionViews.buttons.count)")
        Swift.print("app.collectionViews.cells.count:  \(app.collectionViews.cells.count)")
        Swift.print("scrollViewsQuery.children(matching: .cell).count:  \(scrollViewsQuery.children(matching: .cell).count)")
        Swift.print("scrollViewsQuery.children(matching: .other).count:  \(scrollViewsQuery.children(matching: .other).count)")
        Swift.print("app.collectionViews.otherElements: 👈  \(app.collectionViews.otherElements)")
        Swift.print("app.collectionViews.cells.children(matching: ).count:  \(app.collectionViews.cells.children(matching: .button).count)")
        Swift.print("app.collectionViews.cells.children(matching: other).count:  \(app.collectionViews.cells.children(matching: .other).count)")
        Swift.print("app.collectionViews.cells.children(matching: text).count:  \(app.collectionViews.cells.children(matching: .textField).count)")
        Swift.print("app.collectionViews.cells.children(matching: static text).count:  \(app.collectionViews.cells.children(matching: .staticText).count)")
        Swift.print("app.collectionViews.otherElements.count:  \(app.collectionViews.otherElements.count)")
        /**
         * ## Example:
         * hittableElements(query: XCUIApplication().descendants(matching: .any)).count // n
         */
//        func hittableElements(query: XCUIElementQuery) -> [XCUIElement] {
//            return (0..<query.count).indices.map { i in
//                let element:XCUIElement = query.children(matching: .textField).element(boundBy: i)
//                return element
//                }.compactMap { $0 }
//        }
//        let arr = hittableElements(query: )
       

        Swift.print("View all:  \(app.filterElements(containing: "View all").firstMatch.exists)")
        Swift.print("Featured:  \(app.filterElements(containing: "Featured Playlist").firstMatch.exists)")
        
        Swift.print("identifier 👌:  \(app.filterElements(containing: "Featured Playlist").firstMatch.identifier)")
        Swift.print("app.filterElements(containing: Featured Playlist).firstMatch.title:  \(app.filterElements(containing: "Featured Playlist").firstMatch.title)")
        
        Swift.print("app.filterElements(containing: View all).count:  \(app.filterElements(containing: "View all").count)")
        Swift.print("app.filterElements(containing: Featured).count:  \(app.filterElements(containing: "Featured Playlist").count)")
        
//        let query = XCUIApplication().descendants(matching: .any)
//        let elements: [XCUIElement] = (0..<query.count).indices.map { i in
//            let element: XCUIElement = query.children(matching: .any).element(boundBy: i)
//            return element
//        }
////        Swift.print("elements.count:  \(elements.count)")
//        let results = elements.first(where: { $0.title == "View all" })
//        Swift.print("results:  \(results)")
//        results?.firstMatch.tap()
        sleep(2)
        let tablesQuery = app.collectionViews
        
        XCUIElement.elements(query: tablesQuery).forEach { cell in
            Swift.print(" 👈 cell.identifier:  \(cell.identifier) cell.title:  \(cell.title)")
            Swift.print(" 👉 cell.children(matching: .any).count:  \(cell.children(matching: .any).count)")
//            XCUIElement.elements(element: cell).forEach { cellChild in
//                Swift.print("👉 cellChild.identifier:  \(cellChild.identifier) cellChild.title:  \(cellChild.title)")
//            }
        }
        
        // 🏀
            
        
//        let cellQuery = tablesQuery.cells.containing(.staticText, identifier: "View all")
//        let cell = cellQuery.children(matching: .staticText)
//        let cellElement = cell.element
//        cellElement.tap()
        sleep(2)
//        let tableElement = tablesQuery.element
//        tableElement.swipeUp()
        sleep(2)
        
//        app.filterElements(containing: "Featured Playlist").element(boundBy: 6).tap()
//        let visibleWindow = app.windows.element(boundBy: 0)
//        visibleWindow.swipeUp()
//        sleep(3)
//        visibleWindow.swipeUp()
//        sleep(5)
//        visibleWindow.swipeUp()
   
        sleep(2)
//        Swift.print("cell:  \(cell)")
//        app.collectionViews.firstMatch.scrollToElement(element: cell)
//        let cell = app.collectionViews.cells.children(matching: .button).element(boundBy: 12)
//        self.app.press(forDuration: 1, thenDragTo: cell)
//        sleep(3)
//        let element = app.collectionViews.otherElements.element(boundBy: 3)//
//        sleep(1)
//        element.tap()
//        arr[12].tap()
//        sleep(1)
        
        
//        let app = XCUIApplication()
        
//        let element = self.app.collectionViews.element(boundBy: 7).buttons.firstMatch
//        Swift.print("element:  \(element)")
//        self.app.collectionViews.firstMatch.scrollToElement(element: element)
//        element.tap()
        
        
//        app.collectionViews.otherElements.element(boundBy: i)
//        element.tap()
        
        
        
//        Swift.print("featurePlayListMoreButton:  \(featurePlayListMoreButton)")
//        sleep(1)
//        featurePlayListMoreButton.tap()
//        cellQuery.buttons["signup button"].tap()
//        sleep(1)
    }
}
