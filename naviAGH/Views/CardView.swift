import SwiftUI


struct CardView: View {
    
    let building: Building
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(building.symbol).font(.headline)
            HStack{
                Text(building.name)
                if(building.wheelchairAccess != WheelchairAccess.no) {
                    Image(systemName: "figure.roll")
                        .foregroundColor(wheelchairIconColor)
                    
                }
                if(building.wifiAvailable) { Image(systemName:"wifi") }
            }
        }.padding()
        .background(cardColor)
    }
    
    var cardColor: Color {
            switch building.type {
            case .university:
                return .blue
            case .dormitory:
                return .green
            case .library:
                return .orange
            case .utility:
                return .gray
            }
        }
    var wheelchairIconColor: Color {
        switch building.wheelchairAccess {
        case .partial:
            return .yellow
        default:
            return .green
        }
    }
    
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
    CardView(building: Building.sampleData[0])
            .background()
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
