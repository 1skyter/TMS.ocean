//
//  UIButton+Extension.swift
//  diplom.ocean
//
//  Created by Rodion Trach on 15.03.2023.
//

import UIKit

extension UIButton {
    func setFont(text: String, size: CGFloat) {
        if let font = UIFont(name: "ARCADECLASSIC", size: size) {
            let attributes = [NSAttributedString.Key.font: font]
            let result = NSAttributedString(string: text, attributes: attributes)
            
            self.setAttributedTitle(result, for: .normal)
        }
    }
}
