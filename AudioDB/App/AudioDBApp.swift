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
    let screenToStart: TypeOfScreen
    init() {
        let envVar = ProcessInfo.processInfo.environment["-UITest_chooseScreen"]
        switch envVar {
        case "listMemes":
            screenToStart = .listMemes
        case "detailMeme":
            screenToStart = .detailMeme
        default:
            screenToStart = .mainMenu
        }
    }
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
//            ContentView()
                switch screenToStart {
                case .mainMenu:
                    HomeView()
                        .navigationTitle(Text("MemesDB"))
                case .listMemes:
                    ListMemesView()
                case .detailMeme:
                    // TODO: MAKE THIS VIEW
//                    DetailMemeView()
                    Text("DetailMemeView")
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(memeManager)
        }
    }
}
