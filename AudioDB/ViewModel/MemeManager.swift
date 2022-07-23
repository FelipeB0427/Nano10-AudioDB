//
//  MemeManager.swift
//  AudioDB
//
//  Created by Luiz Araujo on 21/07/22.
//

import Foundation
import Combine

class MemeManager: ObservableObject {
    @Published private(set) var memes: [Meme]
    @Published private(set) var categories: [String]
    init() {
        self.memes = []
        self.categories = []
    }
    init(memes: [Meme], categories: [String]) {
        self.memes = memes
        self.categories = categories
    }
    func addMeme(meme: Meme) {
        if !memes.contains(meme) {
            meme.isFavorite = true
            memes.append(meme)
        }
    }
    func addMeme(meme: MemeJSON) {
        let memeAux = Meme(memeJSON: meme)
        memeAux.isFavorite = false
        if !memes.contains(memeAux) {
            memes.append(memeAux)
        }
    }
    func addMeme(memes: [Meme]) {
        for meme in memes {
            addMeme(meme: meme)
        }
    }
    func addMeme(memes: [MemeJSON]) {
        for meme in memes {
            addMeme(meme: meme)
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
    func fetchAllMemes() async {
        let meemeURL = URL(string: Constants.memeGenerator.getAllMemes)!
        var memeGen: MemeGenerator!
        do {
            let (data, _) = try await URLSession.shared.data(from: meemeURL)
            memeGen = try JSONDecoder().decode(MemeGenerator.self, from: data)
        } catch {
            print("TODO: handle errors")
        }
        self.addMeme(memes: memeGen.data.memes)
    }
}
