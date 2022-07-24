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
    @Published private(set) var categories: [MemeCategory]
    init() {
        self.memes = []
        self.categories = []
    }
    init(memes: [Meme], categories: [MemeCategory]) {
        self.memes = memes
        self.categories = categories
    }
    // MARK: MEME
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
        getAllCategories()
    }
    // MARK: CATEGORY
    func getAllCategories() {
        for meme in memes {
            let cat = MemeCategory(id: "\(meme.boxCount)", isSelected: false)
            if !categories.contains(cat) {
                addCategory(category: cat)
            }
        }
        categories = categories.sorted(by: { $0.id < $1.id })
    }
    func addCategory(category: MemeCategory) {
        if !categories.contains(category) {
            categories.append(category)
        }
    }
    func addCategories(categories: [MemeCategory]) {
        for category in categories {
            addCategory(category: category)
        }
    }
    // MARK: Deletions
    func deleteAllCategories() {
        categories = []
    }
}
