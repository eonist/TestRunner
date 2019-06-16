import XCTest
import TestRunner
/**
 * Creates screenshots for the fastlane/snapshot suite (By making UI actions and then recording the screenshots)
 */
class SnapShotMaker: XCTestCase {
   override func setUp() {
      super.setUp()
      Swift.print("setUp ✅")
      continueAfterFailure = false
      setupSnapshot(XCUIApplication()) // Setup snapshot framework
      //        _ = app
      //        let albumCoverSequence: [SceneKind.Type] = [LoginScene.self, SearchScene.self, LogoutScene.self]
      let featurePlaylistSequence: [SceneKind.Type] = [LoginScene.self, FeaturePlayListScene.self, LogoutScene.self]
      SceneRunner(sequence: featurePlaylistSequence,  user: SceneRunner.Users.userC) {
         Swift.print("All scenes completed 🏁")
         }.iterate()
      
      
      //        DemoIteratorExample().iterate()
      //        Swift.print("should not run")
      
      //        sleep(16)
      
      //        let scene: Scene = .init(user:  (" ", " ")) // wait for 0.5 sec
      //            //            snapshxot("4-\("detail")") // Here, we'll take the first screenshot
      //        scene.login()
      
      //        usleep(useconds_t(2.0 * 1000000)) // wait for 0.5 sec
      //        let btn0 = tabBarsQuery.buttons.element(boundBy: 0)
      //        _ = { // click tabbar buttons
      //
      //        }
      
      //        _ = { // logout
      //
      //        }
      Swift.print("all done 🏁")
      
      //        testScreenshots()
   }
   override func tearDown() { }
   func testExample() {
      
      
      
   }
}
extension SnapShotMaker {
   
}

