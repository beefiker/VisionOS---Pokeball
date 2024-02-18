import SwiftUI

struct PokemonCard: View {
    @State var isShowing: Bool = false
    let name: String
    let description: String
    let openCard: () async -> Void
    let dismissCard: () async -> Void
    
    var body: some View {
        VStack {
            Image("pokemon-\(name)")
                .resizable()
                .frame(width: 120, height:150)
                .padding(25)
            
            Text(name.capitalized)
                .font(.system(size: 32, weight: .bold))

            Toggle(isShowing ? "Hide details" : "Show details", isOn: $isShowing)
                .onChange(of: isShowing, initial: false) { isShowing, initial in
                    Task {
                        if !isShowing {
                            await openCard()
                        } else {
                            await dismissCard()
                        }
                    }
                }
                .toggleStyle(.button)
                .padding(10)
            
            if(isShowing){
                Text(description)
                    .font(.system(size: 20))
                    .padding(20)
            }
        }
        .frame(width: 240)
        .glassBackgroundEffect()
    }
}
