//
//  PlayerMatch.swift
//  diplom.ocean
//
//  Created by Rodion Trach on 15.03.2023.
//

import Foundation

struct PlayerMatch: Codable {
    let name: String
    let score: Int
    let time: TimeInterval
    let difficult: Difficult
}

