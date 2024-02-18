import Foundation

enum Area: String, Identifiable, CaseIterable, Equatable {
    case list, video
    var id : Self { self }
    var name : String { rawValue.capitalized }
    
    var title: String {
        switch self {
        case .list:
            "Here's my Pokémons. Take a look..."
        case .video:
            ""
        }
    }
    
    var subTitle: String {
        switch self {
        case .list:
            "Get Inside"
        case .video:
            "3rd View"
        }
    }
}
