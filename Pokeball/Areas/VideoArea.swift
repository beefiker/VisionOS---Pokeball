import SwiftUI
import AVKit

struct VideoArea: View {
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "pokemon-ball", withExtension: "mp4")!)
    @State var isPlaying: Bool = false
    
    var body: some View {
        VStack {
            VideoPlayer(player: player)
            Button {
                isPlaying ? player.pause() : player.play()
                isPlaying.toggle()
                player.seek(to: .zero)
            } label: {
                Image(systemName: isPlaying ? "stop" : "play")
            }
            .padding(10)
        }
        .glassBackgroundEffect()
        .onAppear(perform: {
            isPlaying = false
        })
        .onDisappear(perform: {
            player.pause()
        })
    }
        
}

#Preview {
    VideoArea()
}
