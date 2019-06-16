import Foundation

class LogoutScene: Scene {
    ///
    /// Logout actions
    ///
    override func run() {
        Swift.print("start logout scene 🎉")
        _ = { // Navigate to Collection view
            sleep(1)
            let collectionTabBarButton = NavigationHelper.tabButton(tabButtonType: .myCollectionButton)
            Swift.print("collectionTabBarButton \(collectionTabBarButton) 👌")
            collectionTabBarButton.tap()
        }()
        
        _ = { // Go to settings, go to userProfile, click logoutBUtton, click OK-btn in prompt
            sleep(1)
            let settingsButton = self.app.descendants(matching:.any).matching(identifier: "settingButton").element
            settingsButton.tap()
            
            usleep(useconds_t(0.5 * 1000000)) // wait for 0.5 sec
            let userProfileButton = self.app.descendants(matching: .any).matching(identifier: "userProfileButton").element
            userProfileButton.tap()
            
            usleep(useconds_t(0.5 * 1000000)) // wait for 0.5 sec
            
            let logoutButton = self.app.descendants(matching: .any).matching(identifier: "Log out").element
            logoutButton.tap()
            
            usleep(useconds_t(0.5 * 1000000)) // wait for 0.5 sec
            let okButton = self.app.descendants(matching: .any).matching(identifier: "signoutDialogOK").element
            okButton.tap()
        }()
        Swift.print("logged out 🔒")
    }
}
