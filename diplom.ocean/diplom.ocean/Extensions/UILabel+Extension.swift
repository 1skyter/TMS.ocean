//
//  UILabel+Extension.swift
//  diplom.ocean
//
//  Created by Rodion Trach on 15.03.2023.
//

import UIKit

extension UILabel {
    func setFont(text: String, size: CGFloat) {
        if let font = UIFont(name: "ARCADECLASSIC", size: size) {
            let attributes = [NSAttributedString.Key.font: font]
            let result = NSAttributedString(string: text, attributes: attributes)
            
            self.attributedText = result
        }
    }
    
    @objc func input(textField: UITextField) {
        guard let text = textField.text else { return }
        self.setFont(text: text, size: 35)
    }
}
