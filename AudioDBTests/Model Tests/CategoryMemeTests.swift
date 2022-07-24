//
//  CategoryMemeTests.swift
//  AudioDBTests
//
//  Created by Luiz Araujo on 23/07/22.
//

import XCTest

@testable import AudioDB
class CategoryMemeTests: XCTestCase {
    var sut: MemeCategory!
    override func setUpWithError() throws {
        sut = MemeCategory(id: "1", isSelected: false)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testCategoryMemeInit() {
        // WHEN
        sut = MemeCategory(id: "1", isSelected: false)
        // THEN
        XCTAssertNotNil(sut)
    }
    func testCategoryMemeEquatable_ReturningTrue() {
        // WHEN
        let catAux = MemeCategory(id: "2", isSelected: false)
        // THEN
        XCTAssertEqual(sut, catAux)
    }
//    func testCategoryMeme_ChangeOfValues() {
//        sut = MemeCategory(id: "1", isSelected: false)
//        // WHEN
//        sut = MemeCategory(id: "1", isSelected: false)
//        XCTAssertEqual(su, <#T##expression2: Equatable##Equatable#>)
        // THEN
//        XCTAssertNotNil(sut)
//    }
}
