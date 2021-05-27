//
//  Game.swift
//  BullsEye
//
//  Created by Riaz Raffi on 1/10/21.
//

import Foundation

struct Game {
    var target = Int.random(in: 1 ... 100)
    var points = 0
    var round = 1

    /// Calculating score
    func score(sliderValue: Int) -> Int {
        return 100 - abs(target - sliderValue)
    }
}
