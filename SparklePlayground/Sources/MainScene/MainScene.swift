//
//  MainScene.swift
//  SparklePlayground
//
//  Created by Michal on 25/03/2024.
//

import SwiftUI

struct MainScene: View {
    @StateObject var mainCoordinator = MainSceneCoordinator()
    
    
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Sparkle Playground")
                .font(.title)
            
            VStack(spacing: 8) {
                Text("Version number: \(mainCoordinator.versionNumber)")
                Text("Build number: \(mainCoordinator.buildNumber)")
            }

        }
        .padding()
    }
}


// MARK: - Previews

#Preview {
    MainScene()
}
