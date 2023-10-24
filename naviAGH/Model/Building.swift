import Foundation
import MapKit
import SwiftUI

enum WheelchairAccess: String {
    case yes
    case no
    case partial
}

enum BuildingType: String {
    case university
    case dormitory
    case library
    case utility
}

struct Building: Identifiable {
    let id: UUID
    var symbol: String
    var name: String
    var image: String
    var address: String
    var description: String
    var wifiAvailable: Bool
    var wheelchairAccess: WheelchairAccess
    var shape: MKPolygon
    var type: BuildingType
    var favourite: Bool = false
}


extension Building {
    static let sampleData: [Building] =
    [
        Building( id: UUID(), symbol: "D-10", name: "Wydział Fizyki i Informatyki Stosowanej", image: "", address: "al. Mickiewicza 30", description: "Budynek Wydziału Fizyki i Informatyki Stosowanej", wifiAvailable: false, wheelchairAccess: WheelchairAccess.yes, shape: MKPolygon(coordinates: [
            CLLocationCoordinate2D(latitude: 19.912784, longitude: 50.0672586),
            CLLocationCoordinate2D(latitude: 19.9127486, longitude: 50.067163),
            CLLocationCoordinate2D(latitude: 19.9128873, longitude: 50.0671416),
            CLLocationCoordinate2D(latitude: 19.9129232, longitude: 50.0672372)
        ], count: 4), type: BuildingType.university),
        Building( id: UUID(), symbol: "D-7", name: "Wydział Fizyki i Informatyki Stosowanej", image: "", address: "al. Mickiewicza 30", description: "Budynek Wydziału Fizyki i Informatyki Stosowanej", wifiAvailable: true, wheelchairAccess: WheelchairAccess.partial, shape: MKPolygon(coordinates: [
            CLLocationCoordinate2D(latitude: 19.912784, longitude: 50.0672586),
            CLLocationCoordinate2D(latitude: 19.9127486, longitude: 50.067163),
            CLLocationCoordinate2D(latitude: 19.9128873, longitude: 50.0671416),
            CLLocationCoordinate2D(latitude: 19.9129232, longitude: 50.0672372)
        ], count: 4), type: BuildingType.utility),
        Building( id: UUID(), symbol: "C-2", name: "Wydział Fizyki i Informatyki Stosowanej", image: "", address: "al. Mickiewicza 30", description: "Budynek Wydziału Fizyki i Informatyki Stosowanej", wifiAvailable: true, wheelchairAccess: WheelchairAccess.no, shape: MKPolygon(coordinates: [
            CLLocationCoordinate2D(latitude: 19.912784, longitude: 50.0672586),
            CLLocationCoordinate2D(latitude: 19.9127486, longitude: 50.067163),
            CLLocationCoordinate2D(latitude: 19.9128873, longitude: 50.0671416),
            CLLocationCoordinate2D(latitude: 19.9129232, longitude: 50.0672372)
        ], count: 4), type: BuildingType.library),
        Building( id: UUID(), symbol: "C-4", name: "Wydział Fizyki i Informatyki Stosowanej", image: "", address: "al. Mickiewicza 30", description: "Budynek Wydziału Fizyki i Informatyki Stosowanej", wifiAvailable: false, wheelchairAccess: WheelchairAccess.yes, shape: MKPolygon(coordinates: [
            CLLocationCoordinate2D(latitude: 19.912784, longitude: 50.0672586),
            CLLocationCoordinate2D(latitude: 19.9127486, longitude: 50.067163),
            CLLocationCoordinate2D(latitude: 19.9128873, longitude: 50.0671416),
            CLLocationCoordinate2D(latitude: 19.9129232, longitude: 50.0672372)
        ], count: 4), type: BuildingType.dormitory),
    ]
    
}
