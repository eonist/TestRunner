import UIKit
/**
 * - Fixme: ⚠️️ Use SwiftUI instead
 */
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
   lazy var window: UIWindow? = {
      let win = UIWindow(frame: UIScreen.main.bounds)
      let vc: MainVC = .init()
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
class MainView: UIView {}
