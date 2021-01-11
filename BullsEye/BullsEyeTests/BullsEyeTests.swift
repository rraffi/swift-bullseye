//
//  BullsEyeTests.swift
//  BullsEyeTests
//
//  Created by Riaz Raffi on 1/11/21.
//

import XCTest
@testable import BullsEye

class BullsEyeTests: XCTestCase {

    var game: Game!

    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }

    func testScorePositive() throws {
        var guess = game.target + 5
        var score = game.score(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }

    func testScoreNegative() throws {
        var guess = game.target - 5
        var score = game.score(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }

}
