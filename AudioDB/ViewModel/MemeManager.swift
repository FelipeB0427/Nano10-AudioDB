//
//  MemeManager.swift
//  AudioDB
//
//  Created by Luiz Araujo on 21/07/22.
//

import Combine

class MemeManager: ObservableObject {
    @Published private(set) var favorites: [Meme]
    @Published private(set) var categories: [String]
    init(favorites: [Meme], categories: [String]) {
        self.favorites = favorites
        self.categories = categories
    }
    func addFavorite(meme: Meme) {
        if !favorites.contains(meme) {
            meme.isFavorite = true
            favorites.append(meme)
        }
    }
    func addFavorite(memes: [Meme]) {
        for meme in memes {
            addFavorite(meme: meme)
        }
    }
    func addCategory(category: String) {
        if !categories.contains(category) {
            categories.append(category)
        }
    }
    func addCategories(categories: [String]) {
        for category in categories {
            addCategory(category: category)
        }
    }
}
