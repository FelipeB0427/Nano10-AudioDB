//
//  MemeTests.swift
//  AudioDBTests
//
//  Created by Luiz Araujo on 21/07/22.
//

import XCTest

@testable import AudioDB
class MemeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInit() {
        // WHEN
        let meme = Meme(isFavorite: memeStub.isFavorite,
                    imageURL: memeStub.imageURL,
                    title: memeStub.title)
        // THEN
        XCTAssertNotNil(meme, "The class couldn't be initialized.")
        XCTAssertEqual(meme.isFavorite, memeStub.isFavorite, "")
        XCTAssertEqual(meme.imageURL, memeStub.imageURL, "")
        XCTAssertEqual(meme.title, memeStub.title, "")
    }
    func testEquatable_ReturnsTrue() {
        let meme = Meme(isFavorite: memeStub.isFavorite,
                         imageURL: memeStub.imageURL,
                         title: memeStub.title)
        // THEN
        XCTAssertEqual(memeStub, meme)
    }
    func testEquatable_ReturnsFalse() {
        // GIVEN
        let isFavorite = true
        let url = URL(string: "https://www.google.com.br/images/branding/googlelogo/2x/1googlelogo_color_272x92dp.png")!
        let title = "Google1"
        let meme = Meme(isFavorite: isFavorite,
                         imageURL: url,
                         title: title)
        // THEN
        XCTAssertNotEqual(meme, memeStub)
    }
}
