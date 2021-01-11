//
//  Game.swift
//  BullsEye
//
//  Created by Riaz Raffi on 1/10/21.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1 ... 100)
    var points: Int = 0
    var round: Int = 1

    func score(sliderValue: Int) -> Int {
        return 100
    }
}
