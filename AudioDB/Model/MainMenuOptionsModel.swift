//
//  MainMenuOptionsModel.swift
//  AudioDB
//
//  Created by Luiz Araujo on 20/07/22.
//

import Foundation

struct MainMenuOptionsModel: Cardable {
    var id: String
    var image: String
    var text: String
}
let mainMenuOptions: [MainMenuOptionsModel] = [
    MainMenuOptionsModel(id: "buttonMeme", image: "face.smiling.fill", text: "Memes"),
    MainMenuOptionsModel(id: "buttonGenerate", image: "face.smiling.fill", text: "Generate")
]
let favoritesMemes: [MainMenuOptionsModel] = [
    MainMenuOptionsModel(id: "favoriteMemes1", image: "face.smiling.fill", text: "fav 1"),
    MainMenuOptionsModel(id: "favoriteMemes2", image: "face.smiling.fill", text: "fav 2"),
    MainMenuOptionsModel(id: "favoriteMemes3", image: "face.smiling.fill", text: "fav 3"),
    MainMenuOptionsModel(id: "favoriteMemes4", image: "face.smiling.fill", text: "fav 4")
]
let categoriesMemes: [MainMenuOptionsModel] = [
    MainMenuOptionsModel(id: "favoriteMemes1", image: "face.smiling.fill", text: "fav 1"),
    MainMenuOptionsModel(id: "favoriteMemes2", image: "face.smiling.fill", text: "fav 2"),
    MainMenuOptionsModel(id: "favoriteMemes3", image: "face.smiling.fill", text: "fav 3"),
    MainMenuOptionsModel(id: "favoriteMemes4", image: "face.smiling.fill", text: "fav 4")
]
