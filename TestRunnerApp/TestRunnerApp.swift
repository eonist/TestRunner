import SwiftUI

// fixme: remake xcodeproj to support the swiftui format

@main
struct TestRunnerApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .background(Color.orange)
        }
    }
}

struct MainView: View {
    var body: some View {
        Text("Welcome to TestRunner")
            .padding()
    }
}