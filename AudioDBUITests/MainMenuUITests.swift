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
//        device = nil
    }
    // MARK: Main Menu
    func testChooseText() {
        // GIVEN
        let text = app.scrollViews.otherElements.staticTexts["textChoose"]
        // THEN
        XCTAssertEqual(text.label, "Choose what you want to do now:")
    }
    func testMemesButton() {
        // GIVEN
        let elementsQuery = app.scrollViews.otherElements
        let memes = elementsQuery.buttons["navButtonMemes"]
        // THEN
        XCTAssertTrue(memes.exists, "Main Menu doesn't have the Memes button")
    }
    func testGenerateButton() {
        // GIVEN
        let elementsQuery = app.scrollViews.otherElements
        let generate = elementsQuery.buttons["navButtonGenerate"]
        // THEN
        XCTAssertTrue(generate.exists, "Main Menu doesn't have the Generate Memes button label")
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
    // MARK: Navigation
    func testNavigation_ToListView() {
        // GIVEN
        let titleListView = app.staticTexts["titleListView"]
        let elementsQuery = app.scrollViews.otherElements
        let card = elementsQuery.buttons["navButtonMemes"]
        // THEN
        XCTAssertFalse(titleListView.exists, "The title in ListView shouldn't exist at this moment")
        card.tap()
        // WHEN
        let exists = titleListView.waitForExistence(timeout: 3.0)
        XCTAssertTrue(exists)
    }
}
