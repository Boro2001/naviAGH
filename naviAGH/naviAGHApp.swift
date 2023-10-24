import SwiftUI

@main
struct naviAGHApp: App {
    var body: some Scene {
        WindowGroup {
            CardListView(buildings: Building.sampleData)
        }
    }
}
