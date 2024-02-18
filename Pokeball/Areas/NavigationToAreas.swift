import SwiftUI

struct NavigationToAreas: View {
    var body: some View {
        VStack {
            
            Text("Welcome to my \nPokémon Ball")
                .monospaced()
                .font(.system(size: 50, weight: .black))
                .padding(.top, 100)
                .shadow(radius: 10)
            
            HStack(spacing: 25){
                ForEach(Area.allCases) { area in
                    NavigationLink {
                        if(area != Area.video){
                            Text(area.title)
                                .monospaced()
                                .font(.system(size: 50, weight: .bold))
                                .padding(.bottom, 20)
                                .shadow(radius: 10)
                        }
                        
                        if (area == Area.list){
                            PokemonArea()
                        }
                        else if (area == Area.video){
                            VideoArea()
                        }
                        
                        Spacer()
                        
                    } label: {
                        Label(area.subTitle, systemImage: "chevron.right")
                            .monospaced()
                            .font(.title)
                    }
                    .controlSize(.extraLarge)
                }
            }
        }
    }
}

#Preview {
    NavigationToAreas()
}
