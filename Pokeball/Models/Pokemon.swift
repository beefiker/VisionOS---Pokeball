import Foundation

enum Pokemon: String, Identifiable, CaseIterable, Equatable {
    case pikachu, charmander, squirtle, sewoong
    var id : Self { self }
    var name : String { rawValue.lowercased() }

    var description: String {
        switch self {
        case .pikachu:
            "Pikachu are small, and cute mouse-like Pokémon. They are almost completely covered by yellow fur. They have long yellow ears that are tipped with black. A Pikachu's back has two brown stripes, and its large tail is notable for being shaped like a lightning bolt, yet its brown tip is almost always forgotten."
        case .charmander:
            "Charmander is a bipedal, reptilian Pokémon with a primarily orange body and blue eyes. Its underside from the chest down and the soles of its feet are cream-colored"
        case .squirtle:
            "Squirtle is a small, light-blue Pokémon with an appearance similar to a turtle. With its aerodynamic shape and grooved surface, Squirtle's shell helps it wade through the water very quickly."
        case .sewoong:
            "This creature is living as a Back-end devloper and it's male. I know this guy a bit"
        }
    }
}
