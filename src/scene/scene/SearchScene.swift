import XCTest

class SearchScene: Scene {
    override func run() {
        Swift.print("Start search scene 🔍")
        _ = { // Navigate to Search view
            sleep(1)
            let searchTabBtn = NavigationHelper.tabButton(tabButtonType: .searchButton)
            Swift.print("searchTabBtn \(searchTabBtn) 👌")
            searchTabBtn.tap()
        }()
        
//        _ = { // Tap the SearchBar
//            let searchBar: XCUIElement = app.descendants(matching: .any).matching(identifier: "searchBar").element
//            searchBar.tap()
//        }()
        
        _ = { // Tap the searchField
            let searchField: XCUIElement = app.searchFields.matching(identifier: "Search").element
            searchField.tap()
            searchField.typeText("Jaden Syre")
        }()
        
        _ = { // tap the searchResult
            sleep(1) // wait a bit
            let idx: Int = 0
            let searchResultAtIndex: XCUIElement = app.tables.children(matching: .cell).element(boundBy: idx)
            searchResultAtIndex.tap()
        }()
        
        sleep(1) // Look at the result a bit
        
        
        _ = { // click the album title or album artist title
//            let trackTitleLabel: XCUIElement = self.app.descendants(matching: .any).matching(identifier: "albumArtistModuleTrackTitleLabel").element
//            Swift.print("trackTitleLabel:  \(trackTitleLabel)")
//            sleep(1)
//            trackTitleLabel.tap()
//            sleep(1)
            
//            let albumArtistTitleLabel: XCUIElement = self.app.descendants(matching: .any).matching(identifier: "albumArtistModuleAlbumArtistTitleLabel").element
//            Swift.print("albumArtistTitleLabel:  \(albumArtistTitleLabel)")
//            sleep(1)
//            albumArtistTitleLabel.tap()
//            sleep(1)
  
             sleep(1)
            let albumPlayButton: XCUIElement = app.scrollViews.otherElements.buttons["Play"]
            albumPlayButton.tap()
            
            sleep(1)
            let playerTrackTitleButton: XCUIElement = app.buttons["miniPlayerTrackTitle"]
            playerTrackTitleButton.tap()
            
            sleep(1)
            snapshot("0-\("albumScreen")")
            
            let albumArtwork: XCUIElement = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 1).scrollViews.children(matching: .other).element.children(matching: .other).element.children(matching: .image).element
            Swift.print("albumArtwork:  \(albumArtwork) 👈")
            let img: XCUIScreenshot = albumArtwork.screenshot()
            snapshot("6-\("albumArtwork")", screenshot: img) // Here, we'll take the first screenshot
//            let image : UIImage = img.image
//            Swift.print("image.size:  \(image.size)")
//            Swift.print("image:  \(image)")
            sleep(2)
            XCUIApplication()/*@START_MENU_TOKEN@*/.buttons["nowPlayingCloseButton"]/*[[".buttons[\"Close\"]",".buttons[\"nowPlayingCloseButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        }()
      
        _ = { // expand the miniPlayer
            
            sleep(3)
//            let miniPlayerArtistTitle: XCUIElement = app.buttons.matching(identifier: "miniPlayerArtistTitle").element
//            Swift.print("miniPlayerArtistTitle:  \(miniPlayerArtistTitle) 👈")
//            miniPlayerArtistTitle.tap()
//            sleep(3)
//            miniPlayerArtistTitle
//            case miniPlayerPlayButton
            
            let miniPlayerPlayButton: XCUIElement = self.app.buttons.matching(identifier: "miniPlayerPlayButton").element
            Swift.print("miniPlayerPlayButton:  \(miniPlayerPlayButton) 👈")
            
            
//            let trackTitleLabel: XCUIElement = app.buttons.matching(identifier: "miniPlayerTrackTitle").element
//            Swift.print("trackTitleLabel:  \(trackTitleLabel) 👈")
//            sleep(3)
//            trackTitleLabel.tap()
//            sleep(2)
            
            
        }
        
        Swift.print("Search completed 🎉")
    }
}


func temp() { // click the player
    Swift.print("click the player")
    //            let miniPlayerTrackTitle: XCUIElement = app.buttons.matching(identifier: "miniPlayerTrackTitle").element
    //            Swift.print("miniPlayerTrackTitle:  \(miniPlayerTrackTitle)")
    ////            miniPlayerTrackTitle.tap()
    //            let miniPlayerPlayButton: XCUIElement = app.buttons.matching(identifier: "miniPlayerPlayButton").element
    //            Swift.print("miniPlayerPlayButton:  \(miniPlayerPlayButton)")
    //
    //            Swift.print("app.buttons:  \(self.app.buttons)")
    //            Swift.print("app.buttons.allElementsBoundByIndex:  \(app.buttons.allElementsBoundByIndex)")
    //            let nowPlayingMediaItemTitleLabel: XCUIElement = app.buttons.matching(identifier: "nowPlayingMediaItemTitleLabel").element
    //            Swift.print("nowPlayingMediaItemTitleLabel:  \(nowPlayingMediaItemTitleLabel)")
    //            nowPlayingMediaItemTitleLabel.tap()
    
    //            app.buttons["nowPlayingCloseButton"].tap()
    //            sleep(1)
    //            app/*@START_MENU_TOKEN@*/.buttons["miniPlayerTrackTitle"]/*[[".buttons[\"PRAY YOU CATCH ME\"]",".buttons[\"miniPlayerTrackTitle\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    sleep(1)
    //            Swift.print("app.scrollViews.otherElements.allElementsBoundByIndex:  \(app.scrollViews.otherElements.allElementsBoundByIndex)")
    //            let elementsQuery = app.scrollViews.otherElements.all
    //            Swift.print("elementsQuery:  \(elementsQuery)")
    //            let nowplayingplaybuttonButton = elementsQuery/*@START_MENU_TOKEN@*/.buttons["nowPlayingPlayButton"]/*[[".buttons[\"Play \/ Pause\"]",".buttons[\"nowPlayingPlayButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    //            nowplayingplaybuttonButton.tap()
    //            sleep(1)
    //            nowplayingplaybuttonButton.tap()
    //
    //            sleep(1)
    //
    //            let nowplayingsliderSlider = elementsQuery.sliders["nowPlayingSlider"]
    //            nowplayingsliderSlider.tap()
    //
    //            sleep(3) // look at the player a bit
    
    
    
    
}
