//
//  UITextField+Extension.swift
//  diplom.ocean
//
//  Created by Rodion Trach on 15.03.2023.
//

import UIKit

extension UITextField {
    func setFont(size: CGFloat) {
        if let font = UIFont(name: "ARCADECLASSIC", size: size) {
            self.font = font
        }
    }
}

