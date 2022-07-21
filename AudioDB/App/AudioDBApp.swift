//
//  AudioDBApp.swift
//  AudioDB
//
//  Created by Felipe Brigagão de Almeida on 18/07/22.
//

import SwiftUI

@main
struct AudioDBApp: App {
    @StateObject private var memeManager = MemeManager()
    
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
//            ContentView()
                HomeView(mainMenuOptions: mainMenuOptions, favorites: favoritesMemes, categories: categoriesMemes)
            }
            .environmentObject(memeManager)
        }
    }
}
