import SwiftUI

struct PokemonArea: View {
    @Environment(ViewModel.self) private var model
    
    var body: some View {
        @Bindable var model = model
        
        HStack(spacing: 15) {
            ForEach(Pokemon.allCases) { pokemon in
                PokemonCard(name: pokemon.name, description: pokemon.description, openCard: {
                    model.selectedPokemonName = pokemon.name
                }, dismissCard:{
                    //
                })
            }
            SpaceCard()
        }
        .padding(40)
    }
        
}

#Preview {
    PokemonArea().environment(ViewModel())
}
