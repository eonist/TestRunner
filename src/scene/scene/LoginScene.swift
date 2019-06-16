import Foundation

class LoginScene: Scene {
    ///
    /// Logout actions
    ///
    override func run() {
        Swift.print("start login scene 🎉")
        usleep(useconds_t(0.5 * 1000000)) // wait for 0.5 sec
        //            snapshot("4-\("detail")") // Here, we'll take the first screenshot

        sleep(sec:0.5) // wait for 0.5 sec
//        let (username, password) = (" ", " ")

        let loginButton = self.app.descendants(matching: .any).matching(identifier: "loginButton").element
        loginButton.tap()

        usleep(useconds_t(0.5 * 1000000)) // wait for 0.5 sec
        let emailField = self.app.descendants(matching: .any).matching(identifier: "usernameTextField").element
        emailField.tap()
        emailField.clearAndTypeText(text: user.username) // typeText("")

        usleep(useconds_t(0.5 * 1000000)) // wait for 0.5 sec
        let passwordField = self.app.descendants(matching: .any).matching(identifier: "passwordTextField").element
        passwordField.tap()
        //        passwordField.clearAndTypeText(text: password) // typeText(password)
        passwordField.typeText(user.password)

        usleep(useconds_t(0.5 * 1000000)) // wait for 0.5 sec
        let confirmLoginButton = self.app.descendants(matching: .any).matching(identifier: "loginUsingUsernameButton").element
        confirmLoginButton.tap()

        usleep(useconds_t(6.0 * 1000000)) // wait for 0.5 sec
        //            snapshot("5-\("loggedin")") // Here, we'll take the first screenshot
        Swift.print("logged in 🔑")
    }
}
