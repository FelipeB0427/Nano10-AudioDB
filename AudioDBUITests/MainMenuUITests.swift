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
    override func setUpWithError() throws {
        app = XCUIApplication()
        XCUIDevice.shared.orientation = .portrait
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testWelcomeText() {
        // GIVEN
        let helloThereStaticText = app.staticTexts["welcome"]
        // THEN
        XCTAssertTrue(helloThereStaticText.exists)
        XCTAssertEqual(helloThereStaticText.label, "Hello, there!")
    }
    func testChooseText() {
        // GIVEN
        let helloThereStaticText = XCUIApplication().staticTexts["textChoose"]
        // THEN
        XCTAssertTrue(helloThereStaticText.exists)
        XCTAssertEqual(helloThereStaticText.label, "Choose what you want to do now:")
    }
}
