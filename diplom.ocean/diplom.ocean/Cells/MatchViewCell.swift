//
//  MatchViewCell.swift
//  diplom.ocean
//
//  Created by Rodion Trach on 15.03.2023.
//

import UIKit

private extension CGFloat {
    static let fontSize = 20.0
}

class MatchViewCell: UITableViewCell {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    static let identifier = "MatchViewCell"

    func configureCell(match: PlayerMatch) {
        self.usernameLabel.setFont(text: match.name, size: .fontSize)
        self.scoreLabel.setFont(text: String(match.score), size: .fontSize)
        self.timeLabel.setFont(text: match.time.asMatchTime(), size: .fontSize)
    }

}
