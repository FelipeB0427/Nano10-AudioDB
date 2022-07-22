//
//  Meme.swift
//  AudioDB
//
//  Created by Luiz Araujo on 21/07/22.
//

import Foundation

struct Meme: Identifiable {
    let id = UUID().uuidString
    let isFavorite: Bool
    let imageURL: URL
    let title: String
}
