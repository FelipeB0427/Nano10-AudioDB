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
        // GIVEN
        let meme: Meme
        let isFavorite = false
        let url = URL(string: "https://www.google.com.br/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png")!
        let title = "Google"
        // WHEN
        meme = Meme(isFavorite: isFavorite,
                    imageURL: url,
                    title: title)
        // THEN
        XCTAssertNotNil(meme, "The class couldn't be initialized.")
        XCTAssertEqual(meme.isFavorite, isFavorite, "")
        XCTAssertEqual(meme.imageURL, url, "")
        XCTAssertEqual(meme.title, title, "")
    }
}
