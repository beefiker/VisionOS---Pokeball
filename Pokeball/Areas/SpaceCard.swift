import SwiftUI

struct SpaceCard: View {    
    @Environment(ViewModel.self) private var model
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    
    var body: some View {
        @Bindable var model = model
        
        VStack {
            Image("space-rocket")
                .resizable()
                .frame(width: 100, height:100)
                .padding(25)
            
            Text("Explore")
                .font(.system(size: 30, weight: .bold))

            Toggle(model.isShowingSpace ? "Recall" : "Launch", isOn: $model.isShowingSpace)
                .onChange(of: model.isShowingSpace, initial: false) { isShowing, initial in
                    Task {
                        if !isShowing {
                            openWindow(id: model.spaceAreaId)
                        } else {
                            dismissWindow(id:model.spaceAreaId)
                        }
                    }
                }
                .toggleStyle(.button)
                .padding(.bottom, 10)
                .tint(model.isShowingSpace ? .red : .blue)
        }
        .glassBackgroundEffect()
    }
}

#Preview {
    SpaceCard().environment(ViewModel())
}

