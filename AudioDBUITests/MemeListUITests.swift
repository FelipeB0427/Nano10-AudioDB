//
//  MemeListUITests.swift
//  AudioDBUITests
//
//  Created by Gustavo da Silva Braghin on 21/07/22.
//

import XCTest
import SwiftUI

@testable import AudioDB
class MemeListUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUpWithError() throws {
        app = XCUIApplication()
        continueAfterFailure = false
        app.launch()
        print(app as Any)
    }

    override func tearDownWithError() throws {
        app = nil
    }
    // MARK: Nav Bar
    func testNavigationBar() {
        // GIVEN
        let navBar = app.navigationBars["Memes"]
        // THEN
        XCTAssert(navBar.exists, "Nav bar doesn't exist")
    }
    
    func testNavigationTitle() {
        // GIVEN
        let text = app.navigationBars["Memes"].staticTexts["Memes"]
        // THEN
        XCTAssertTrue(text.waitForExistence(timeout: 0.5), "Memes text doesn't exist")
        XCTAssertEqual(text.label, "Memes",
                       "Memes text doesn't have the right message")
    }
    
    func testList() {
        // GIVEN
        let list = app.tables["MemeList"]
        // THEN
        XCTAssert(list.exists, "List doens't exist")
    }
    
    func testListCount() {
        // GIVEN
        let listCount = app.tables["MemeList"].cells.count
        // THEN
        XCTAssertTrue(listCount == 3, "List count is wrong")
    }
}
