import Foundation
import SwiftUI


struct BuildingView: View {

    var building: Building
    var body: some View {
        ScrollView {
        

            VStack(alignment: .leading) {
                
                Text(building.symbol)
                    .font(.largeTitle)
                    
                
                HStack{
                    Text(building.address)
                        .font(.title3)

                }
            
                HStack{
                    Text(building.description)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                    if(building.wheelchairAccess == WheelchairAccess.partial){
                        wheelChairIcon.foregroundColor(.gray)}
                    else{
                        wheelChairIcon
                    }
                    wifiIcon
                }.padding(.bottom, 20)
                
                
                Text("Drzwi samoczynnie trzasają się na wietrze, korytarze zatykają się nieznanej materii, a okna zdają się być oczami, które obserwują każdy krok intruza. Ci, którzy odważyli się wejść do Budynku C-2 w nocy, mówią, że widzieli widma starych profesorów, którzy poruszają się cicho jak duchy. Ich oczy świecą się w ciemności, przerażając każdego, kto spojrzy w ich stronę.")
                    .font(.body)
                    .fontWeight(.light)

            }
            .padding()
            
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
    }
}



struct BuildingDetails_Previews: PreviewProvider {
    static var previews: some View {
        BuildingView(building: Building.sampleData[0])
    }
}
