//
//  TestApp.swift
//  Test
//
//  Created by bee on 2/18/24.
//

import SwiftUI

@main
struct TestApp: App {
    
    @State private var model = ViewModel()
    
    var body: some Scene {
        WindowGroup("Main Areas", id: "Areas") {
            Areas()
                .environment(model)
        }
        .windowStyle(.plain)
        
        WindowGroup(id: model.spaceAreaId) {
             SpaceArea()
                .environment(model)
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.8, height: 0.8, depth: 0.8, in: .meters)
    }
}
