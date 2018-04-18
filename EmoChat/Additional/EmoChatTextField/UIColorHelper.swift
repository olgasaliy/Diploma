//
//  UIColorHelper.swift
//  CustomTextFieldEmoChat
//
//  Created by Olga Saliy on 09.02.18.
//  Copyright © 2018. All rights reserved.
//

import UIKit

//https://stackoverflow.com/a/24263296/6643923

extension UIColor {

    convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: a
        )
    }

    convenience init(rgb: Int, a: CGFloat = 1.0) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF,
            a: a
        )
    }
}
