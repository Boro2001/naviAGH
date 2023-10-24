import SwiftUI


enum Theme: String {
    case blue
    case green
    case pink
    case yellow
    
    var accentColor: Color {
        switch self {
        case .blue, .green: return .white
        case .pink, .yellow : return .black
        }
    }
    var mainColor: Color {
        Color(rawValue)
    }
}
