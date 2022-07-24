//
//  MemeTests.swift
//  AudioDBTests
//
//  Created by Luiz Araujo on 21/07/22.
//

import XCTest

@testable import AudioDB
class MemeTests: XCTestCase {
    var meme: Meme!
    override func setUpWithError() throws {
        meme = Meme(id: memeStub.id,
                        isFavorite: memeStub.isFavorite,
                        imageURL: memeStub.url,
                        name: memeStub.name,
                        width: memeStub.width,
                        height: memeStub.height,
                        boxCount: memeStub.boxCount)
    }

    override func tearDownWithError() throws {
        meme = nil
    }

    func testInit() {
        // THEN
        XCTAssertNotNil(meme, "The class couldn't be initialized.")
        XCTAssertEqual(meme.isFavorite, memeStub.isFavorite, "")
        XCTAssertEqual(meme.url, memeStub.url, "")
        XCTAssertEqual(meme.name, memeStub.name, "")
    }
    func testEquatable_ReturnsTrue() {
        // THEN
        XCTAssertEqual(memeStub, meme)
    }
    func testEquatable_ReturnsFalse() {
        // GIVEN
        let isFavorite = true
        let url = URL(string: "https://www.google.com.br/images/branding/googlelogo/2x/1googlelogo_color_272x92dp.png")!
        let meme = Meme(id: "213123423",
                        isFavorite: isFavorite,
                        imageURL: url,
                        name: "blabla",
                        width: 1000,
                        height: 1000,
                        boxCount: 2)
        // THEN
        XCTAssertNotEqual(meme, memeStub)
    }
}
