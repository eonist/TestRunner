import Foundation

class OAuthLoginScene: Scene {
    ///
    /// Login with OAuth (Webview)
    ///
    override func run() {

        let webViewsQuery = app.webViews
        let skrivInnDinEPostEllerBrukernavnTextField = webViewsQuery/*@START_MENU_TOKEN@*/.textFields["Skriv inn din e-post eller brukernavn"]/*[[".otherElements.matching(identifier: \"TIDAL\").textFields[\"Skriv inn din e-post eller brukernavn\"]",".textFields[\"Skriv inn din e-post eller brukernavn\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        sleep(2)
        skrivInnDinEPostEllerBrukernavnTextField.tap()
        sleep(2)
        skrivInnDinEPostEllerBrukernavnTextField.typeText("97539749")
        sleep(2)
        webViewsQuery/*@START_MENU_TOKEN@*/.buttons["Gå videre"]/*[[".otherElements.matching(identifier: \"TIDAL\").buttons[\"Gå videre\"]",".buttons[\"Gå videre\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        sleep(2)
        webViewsQuery/*@START_MENU_TOKEN@*/.secureTextFields["Skriv inn ditt passord"]/*[[".otherElements.matching(identifier: \"TIDAL\").secureTextFields[\"Skriv inn ditt passord\"]",".secureTextFields[\"Skriv inn ditt passord\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        sleep(2)
        webViewsQuery/*@START_MENU_TOKEN@*/.secureTextFields["Skriv inn ditt passord"]/*[[".otherElements.matching(identifier: \"TIDAL\").secureTextFields[\"Skriv inn ditt passord\"]",".secureTextFields[\"Skriv inn ditt passord\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.typeText("qwerty")
        sleep(2)
        webViewsQuery/*@START_MENU_TOKEN@*/.buttons["Logg inn"]/*[[".otherElements.matching(identifier: \"TIDAL\").buttons[\"Logg inn\"]",".buttons[\"Logg inn\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        sleep(4)
        Swift.print("Done ✅")
        // Use recording to get
    }
}
