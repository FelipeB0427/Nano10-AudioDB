//
//  Meme.swift
//  AudioDB
//
//  Created by Luiz Araujo on 21/07/22.
//

import Foundation

class Meme: Identifiable, Equatable {
    let id = UUID().uuidString
    var isFavorite: Bool
    let imageURL: URL
    let title: String
    init(isFavorite: Bool, imageURL: String, title: String) {
        self.isFavorite = isFavorite
        self.imageURL = URL(string: imageURL)!
        self.title = title
    }
    init(isFavorite: Bool, imageURL: URL, title: String) {
        self.isFavorite = isFavorite
        self.imageURL = imageURL
        self.title = title
    }
    static func == (lhs: Meme, rhs: Meme) -> Bool {
        ((lhs.id == rhs.id) || (lhs.imageURL == rhs.imageURL && lhs.title == rhs.title))
    }
}
