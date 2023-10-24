import SwiftUI


struct CardView: View {
    
    let building: Building
    
    var body: some View {
            VStack(alignment: .leading) {
                Text(building.symbol).font(.title)
                HStack{
                    Text(building.name)
                    Spacer()
                    wheelChairIcon
                    wifiIcon
                }
            }.padding()
                .foregroundColor(theme.accentColor)
                .background(theme.mainColor)
    }
    
    var theme: Theme {
        switch building.type {
        case .dormitory: return .blue
        case .university: return .pink
        case .library: return .yellow
        case .utility: return .green
        }
    }
    
    var wifiIcon: Image {
        if building.wifiAvailable{
            return Image(systemName: "wifi")
        }else {
            return Image(systemName: "wifi.slash")
        }
    }
    
    var wheelChairIcon: Image {
         switch building.wheelchairAccess {
         case .yes: return Image(systemName: "figure.roll.runningpace")
         case .partial: return Image(systemName: "figure.roll")
         default: return Image(systemName: "figure.walk")
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var building = Building.sampleData[0]
    static var previews: some View {
        CardView(building: building)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
