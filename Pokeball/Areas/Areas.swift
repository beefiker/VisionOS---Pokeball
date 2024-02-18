import SwiftUI

struct Areas: View {
    var body: some View {
        ZStack {
            NavigationStack {
                NavigationToAreas()
            }
        }
        .background {
            Image("pokemon-world")
        }
        .glassBackgroundEffect()
    }
}
