//
//  DoubleExtension.swift
//  EmoChat
//
//  Created by Olga Saliy on 10.02.18.
//  Copyright © 2018. All rights reserved.
//

import Foundation

extension Double {
    /// Rounds the double to decimal places value
    func roundTo(places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
