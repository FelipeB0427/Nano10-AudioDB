//
//  ListMemesViewUITest.swift
//  AudioDBUITests
//
//  Created by Luiz Araujo on 23/07/22.
//

import XCTest

class ListMemesViewUITest: XCTestCase {
    var app: XCUIApplication!
    override func setUpWithError() throws {
        app = XCUIApplication()
        app.launchEnvironment = ["-UITest_chooseScreen": "listMemes"]
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws {
        app = nil
    }
    func testNavigationToListMemesView() {
        // GIVEN
        let title = app.staticTexts["ListMemesView-title"]
        // THEN
        // WHEN
        XCTAssertTrue(title.exists)
    }
}
