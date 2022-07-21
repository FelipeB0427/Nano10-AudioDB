//
//  HomeUITests.swift
//  AudioDBUITests
//
//  Created by Luiz Araujo on 20/07/22.
//

import XCTest
import SwiftUI

@testable import AudioDB
class HomeUITests: XCTestCase {
    var app: XCUIApplication!
//    var device: XCUIDevice!
//    var stub = [
//        MainMenuOptionsModel(id: "buttonMeme", image: "face.smiling.fill", text: "Memes"),
//        MainMenuOptionsModel(id: "buttonGenerate", image: "face.smiling.fill", text: "Generate")
//    ]
    override func setUpWithError() throws {
        app = XCUIApplication()
//        device = XCUIDevice.shared
//        device.orientation = .portrait
        continueAfterFailure = false
        app.launch()
        print(app as Any)
    }

    override func tearDownWithError() throws {
        app = nil
    }
    // MARK: Main Menu
    func testChooseText() {
        // GIVEN
        let text = app.scrollViews.otherElements.staticTexts["textChoose"]
        // THEN
        XCTAssertTrue(text.exists, "The Choose text doesn't exists")
        XCTAssertEqual(text.label, "Choose what you want to do now:",
                       "The Choose text doesn't have the 'Choose what you want to do now:' message")
    }
    func testMemesButton() {
        // GIVEN
        let text: String = "Memes"
        let sfSymbol: String = "face.smiling.fill"
        let label  = app.staticTexts["buttonMemeLabel"]
        let image  = app.images["buttonMemeEmoji"]
        // THEN
        XCTAssertTrue(label.exists, "Main Menu doesn't have the Memes button label")
        XCTAssertTrue(image.exists, "Main Menu doesn't have the Memes button emoji")
        XCTAssertEqual(label.label, text, "")
        XCTAssertEqual(image.label, sfSymbol, "")
    }
    func testGenerateButton() {
        // GIVEN
        let text: String = "Generate"
        let sfSymbol: String = "face.smiling.fill"
        let label  = app.staticTexts["buttonGenerateLabel"]
        let image  = app.images["buttonGenerateEmoji"]
        // THEN
        XCTAssertTrue(label.exists, "Main Menu doesn't have the Memes button label")
        XCTAssertTrue(image.exists, "Main Menu doesn't have the Memes button emoji")
        XCTAssertEqual(label.label, text, "")
        XCTAssertEqual(image.label, sfSymbol, "")
    }
    // MARK: Favorites
    func testFavoritesText() {
        // GIVEN
        let text = "Favorites"
        let label = app.staticTexts["labelFavorites"]
        // THEN
        XCTAssertTrue(label.exists, "")
        XCTAssertEqual(label.label, text, "")
    }
    func testFavoritesList() {
        // GIVEN
        let table = app.scrollViews.matching(identifier: "homeFavoritesList")
        // THEN
        XCTAssertTrue(table.element.exists)
    }
    // MARK: Welcome
    func testCategoriesText() {
        // GIVEN
        let text = "Categories"
        let label = app.staticTexts["labelCategories"]
        // THEN
        XCTAssertTrue(label.exists, "")
        XCTAssertEqual(label.label, text, "")
    }
    func testCategoriesList() {
        // GIVEN
        let table = app.scrollViews.matching(identifier: "homeCategoriesList")
        // THEN
        XCTAssertTrue(table.element.exists)
    }
}
