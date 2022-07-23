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
        // GIVEN
        let cat1 = MemeCategory(id: "1", isSelected: true)
        let cat2 = MemeCategory(id: "2", isSelected: false)
        // THEN
        XCTAssertNotNil(sut)
        XCTAssertTrue(sut.memes.isEmpty)
        XCTAssertTrue(sut.categories.isEmpty)
        // WHEN
        sut.addMeme(meme: memeStub)
        sut.addCategory(category: cat1)
        sut.addCategory(category: cat2)
        // THEN
        XCTAssertEqual(sut.memes.count, 1)
        XCTAssertEqual(sut.categories.count, 2)
    }
     func testMemeManager_AddArray() {
         // GIVEN
         let cat1 = MemeCategory(id: "1", isSelected: true)
         let cat2 = MemeCategory(id: "2", isSelected: false)
         let cat3 = MemeCategory(id: "3", isSelected: true)
         let cat4 = MemeCategory(id: "4", isSelected: false)
         // THEN
         XCTAssertNotNil(sut)
         XCTAssertTrue(sut.memes.isEmpty)
         XCTAssertTrue(sut.categories.isEmpty)
         // WHEN
         sut.addMeme(memes: [memeStub])
         sut.addCategories(categories: [cat1, cat2, cat3, cat4])
         // THEN
         XCTAssertEqual(sut.memes.count, 1)
         XCTAssertEqual(sut.categories.count, 4)
     }
    func testAddMemes_AvoidingDuplication() {
        // GIVEN
        let cat1 = MemeCategory(id: "1", isSelected: true)
        let cat2 = MemeCategory(id: "2", isSelected: false)
        // WHEN
        sut.addMeme(memes: [memeStub, memeStub, memeStub, memeStub])
        sut.addCategories(categories: [cat1, cat2, cat1, cat1])
        // THEN
        XCTAssertEqual(sut.memes.count, 1)
        XCTAssertEqual(sut.categories.count, 2)
    }
    func testGetAllMemes() async {
        // WHEN
        await sut.fetchAllMemes()
        // THEN
        XCTAssertTrue(sut.memes.count != 0)
    }
    func testGetAllCategories() async {
        // WHEN
        XCTAssertTrue(sut.categories.count == 0)
        await sut.fetchAllMemes()
        sut.getAllCategories()
        // THEN
        XCTAssertTrue(sut.categories.count > 0)
    }
    // MARK: Deletions
    
    func testGetCategories() {
        // GIVEN
        let cat1 = MemeCategory(id: "1", isSelected: true)
        let cat2 = MemeCategory(id: "2", isSelected: false)
        let cat3 = MemeCategory(id: "3", isSelected: true)
        // WHEN
        sut.addCategory(category: cat1)
        sut.addCategory(category: cat2)
        sut.addCategory(category: cat3)
        XCTAssertFalse(sut.categories.isEmpty)
        sut.deleteAllCategories()
        // THEN
        XCTAssertTrue(sut.categories.isEmpty)
    }
}
