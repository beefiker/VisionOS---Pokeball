import Foundation

@Observable
class ViewModel {
    var navigationPath: [Area] = []
    
    var selectedPokemonName: String = ""
    
    var isShowingSpace : Bool = false
    
    var spaceAreaId: String = "SpaceArea"
}
