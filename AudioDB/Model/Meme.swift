//
//  Meme.swift
//  AudioDB
//
//  Created by Luiz Araujo on 21/07/22.
//

import UIKit

class Meme: Identifiable, Equatable {
    let id: String
    var isFavorite: Bool
    let url: URL
    let name: String
    let width: CGFloat
    let height: CGFloat
    let boxCount: Int
    init(id: String, isFavorite: Bool, imageURL: String, name: String, width: CGFloat, height: CGFloat, boxCount: Int) {
        self.id         = id
        self.isFavorite = isFavorite
        self.url        = URL(string: imageURL)!
        self.name       = name
        self.width      = width
        self.height     = height
        self.boxCount   = boxCount
    }
    init(id: String, isFavorite: Bool, imageURL: URL, name: String, width: CGFloat, height: CGFloat, boxCount: Int) {
        self.id         = id
        self.isFavorite = isFavorite
        self.url        = imageURL
        self.name       = name
        self.width      = width
        self.height     = height
        self.boxCount   = boxCount
    }
    init(memeJSON: MemeJSON) {
        self.id         = memeJSON.id
        self.isFavorite = false
        self.url        = URL(string: memeJSON.url)!
        self.name       = memeJSON.name
        self.width      = CGFloat(memeJSON.width)
        self.height     = CGFloat(memeJSON.height)
        self.boxCount   = memeJSON.boxCount
    }
    static func == (lhs: Meme, rhs: Meme) -> Bool {
        ((lhs.id == rhs.id) || (lhs.url == rhs.url && lhs.name == rhs.name))
    }
    static func == (lhs: Meme, rhs: MemeJSON) -> Bool {
        lhs.id == rhs.id
    }
    static func == (lhs: MemeJSON, rhs: Meme) -> Bool {
        lhs.id == rhs.id
    }
    // MARK: Stub
    static var memeStub = Meme(id: "181913649",
                               isFavorite: false,
                               imageURL: "https://i.imgflip.com/30b1gx.jpg",
                               name: "Drake Hotline Bling",
                               width: CGFloat(1200),
                               height: CGFloat(1200),
                               boxCount: 2)
}

/*
"id": "181913649",
"name": "Drake Hotline Bling",
"url": ,
"width": 1200,
"height": 1200,
"box_count": 2
 */

import Foundation

// MARK: - MemeGenerator
struct MemeGenerator: Codable {
    let success: Bool
    let data: DataClass

    enum CodingKeys: String, CodingKey {
        case success
        case data
    }
}

// MARK: - DataClass
struct DataClass: Codable {
    let memes: [MemeJSON]

    enum CodingKeys: String, CodingKey {
        case memes
    }
}

// MARK: - MemeJSON
struct MemeJSON: Codable {
    let id: String
    let name: String
    let url: String
    let width: Int
    let height: Int
    let boxCount: Int

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case url = "url"
        case width = "width"
        case height = "height"
        case boxCount = "box_count"
    }
}
