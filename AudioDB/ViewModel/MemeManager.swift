//
//  MemeManager.swift
//  AudioDB
//
//  Created by Luiz Araujo on 21/07/22.
//

import Combine

class MemeManager: ObservableObject {
    @Published var favorites: [Meme]
    @Published var categories: [String]
    init(favorites: [Meme], categories: [String]) {
        self.favorites = favorites
        self.categories = categories
    }
}
