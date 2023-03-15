//
//  Settings.swift
//  diplom.ocean
//
//  Created by Rodion Trach on 15.03.2023.
//

import UIKit

extension CGFloat {
    static let playerContentDivider: CGFloat = 6
    static let boosterContentDivider: CGFloat = 7.1
    static let minApexContentDivider: CGFloat = 6.3
    static let maxApexContentDivider: CGFloat = 8
    static let coinContentDivider: CGFloat = 10.5
    static let playerPaddingMultiplyer: CGFloat = 7.5
    static let playerMovementDivider: CGFloat = 1.6
}

extension Double {
    static let defaultSpeedMultiplyer = 1.0
    static let speedMultiplyer = 0.96
    static let sizeWhileJumping = 2.5
}

extension Int {
    static let apexObjectsCount = 8
    static let boostObjectsCount = 2
    static let jumpBoardObjectsCount = 3
    static let coinObjectCount = 10
    static let startScore = 0
    static let defaultScoreMultiplyer = 1
    static let scorePerCoin = 5
}

extension TimeInterval {
    static let frameRate: TimeInterval = 1 / 60
    static let apexSpawnRate: TimeInterval = 2.78
    static let jumpBoardSpawnRate: TimeInterval = 6.55
    static let coinsSpawnRate: TimeInterval = 1.53
    static let boostSpawnRate: TimeInterval = 10.1
    static let movementTime: TimeInterval = 5.8
    static let backgroundMovementTime: TimeInterval = 22.5
    static let defaultJumpDuration: TimeInterval = 1.25
}

