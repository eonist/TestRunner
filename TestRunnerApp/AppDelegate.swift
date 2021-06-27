import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
   lazy var window: UIWindow? = {
      let win = UIWindow(frame: UIScreen.main.bounds)
      let vc = MainVC()
      win.rootViewController = vc
      win.makeKeyAndVisible()/*Important since we have no Main storyboard anymore*/
      return win
   }()
   func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      _ = window
      return true
   }
}
/**
 * MainVC
 */
class MainVC: UIViewController {
   override func viewDidLoad() {
      super.viewDidLoad()
      view = MainView()
      view.backgroundColor = .orange
   }
   override var prefersStatusBarHidden: Bool { true }
}
class MainView: UIView { }

//class SearchScene {
//   override run(){
//   let searchBar = XTElement.findFirst("SearchBar")
//   searchBar.search("Eminem")
//   let searchButton = XTElement.findFirst("SearchButton")
//   searchButton.tap()
//   onComplete()
//   }
//}
//let sequence: [SceneKind.Type] = [LoginScene.self, SearchScene.self, LogoutScene.self]
//let runner: SceneRunner = .init(sequence: sequence, user: (username:"John", password:"Little") , onComplete: {})
//runner.complete { Swift.print("All scenes completed 🏁") }
//runner.iterate() // 🏃
