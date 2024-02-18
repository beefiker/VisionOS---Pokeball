import SwiftUI
import RealityKit
import RealityKitContent

struct SpaceArea: View {
    @State private var audioController: AudioPlaybackController?
    
    @Environment(ViewModel.self) private var model
    

    var body: some View {
        @Bindable var model = model
    
        RealityView { content in
            guard let entity = try? await Entity(named: "Scene", in: realityKitContentBundle) else {
                fatalError("Failed to get scene model")
            }
            
            let ambientAudioEntity = entity.findEntity(named: "AmbientAudio")
            
            guard let resource = try? await AudioFileResource(named:"/Root/Space_wav", from: "Scene.usda", in:realityKitContentBundle) else {
                fatalError("Failed to get space.wav file")
            }
            
            audioController = ambientAudioEntity?.prepareAudio(resource)
            audioController?.play()
            content.add(entity)
        }
        .onDisappear(perform: {
            audioController?.stop()
            model.isShowingSpace = false
        })
    }
}

#Preview {
    SpaceArea()
        .environment(ViewModel())
}
