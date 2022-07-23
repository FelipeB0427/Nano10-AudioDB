//
//  MemeManagerTests.swift
//  AudioDBTests
//
//  Created by Luiz Araujo on 21/07/22.
//

import XCTest

@testable import AudioDB
class MemeManagerTests: XCTestCase {
    var sut: MemeManager!
    override func setUpWithError() throws {
        sut = MemeManager(memes: [], categories: [])
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    // MARK: Init
    func testMemeManagerInit() {
        // THEN
        XCTAssertNotNil(sut)
        XCTAssertTrue(sut.memes.isEmpty)
        XCTAssertTrue(sut.categories.isEmpty)
    }
    // MARK: Add
    func testMemeManager_AddElements() {
        // THEN
        XCTAssertNotNil(sut)
        XCTAssertTrue(sut.memes.isEmpty)
        XCTAssertTrue(sut.categories.isEmpty)
        // WHEN
        sut.addMeme(meme: memeStub)
        sut.addCategory(category: "a")
        sut.addCategory(category: "b")
        // THEN
        XCTAssertEqual(sut.memes.count, 1)
        XCTAssertEqual(sut.categories.count, 2)
    }
     func testMemeManager_AddArray() {
         // THEN
         XCTAssertNotNil(sut)
         XCTAssertTrue(sut.memes.isEmpty)
         XCTAssertTrue(sut.categories.isEmpty)
         // WHEN
         sut.addMeme(memes: [memeStub])
         sut.addCategories(categories: ["a", "b", "c", "d"])
         // THEN
         XCTAssertEqual(sut.memes.count, 1)
         XCTAssertEqual(sut.categories.count, 4)
     }
    func testAddFavorite_AvoidingDuplication() {
        // WHEN
        sut.addMeme(memes: [memeStub, memeStub, memeStub, memeStub])
        sut.addCategories(categories: ["a", "b", "a", "a"])
        // THEN
        XCTAssertEqual(sut.memes.count, 1)
        XCTAssertEqual(sut.categories.count, 2)
    }
    func testGetAllMemes() {
        // WHEN
        sut.getAllMemes()
        // THEN
        XCTAssertTrue(sut.memes.count != 0)
    }
}
