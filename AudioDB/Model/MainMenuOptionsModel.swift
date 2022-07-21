//
//  MainMenuOptionsModel.swift
//  AudioDB
//
//  Created by Luiz Araujo on 20/07/22.
//

import Foundation

struct MainMenuOptionsModel: Cardable, Identifiable {
    var id: String
    var image: String
    var text: String
}
let mainMenuOptions: [MainMenuOptionsModel] = [
    MainMenuOptionsModel(id: "buttonMeme", image: "face.smiling.fill", text: "Memes"),
    MainMenuOptionsModel(id: "buttonGenerate", image: "face.smiling.fill", text: "Generate")
]
