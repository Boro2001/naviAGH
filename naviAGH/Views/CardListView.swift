import SwiftUI

struct CardListView: View {
    let buildings: [Building]
    var body: some View {
        NavigationStack {
            List(buildings) {building in
                NavigationLink(destination: BuildingView(building: building)){
                    CardView(building: building).scaledToFit()
                }.listRowBackground(getTheme(for: building).mainColor)
            }
            .navigationTitle("Buildings")
        }
    }
    
    func getTheme(for building: Building) -> Theme {
        switch building.type {
        case .dormitory: return .blue
        case .university: return .pink
        case .library: return .yellow
        case .utility: return .green
        }
    }
}

struct CardListView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView(buildings: Building.sampleData)
    }
}
