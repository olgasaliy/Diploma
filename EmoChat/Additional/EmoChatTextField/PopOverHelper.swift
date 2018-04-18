//
//  popOverHelper.swift
//  CustomTextFieldEmoChat
//
//  Created by Olga Saliy on 09.02.18.
//  Copyright © 2018. All rights reserved.
//

import UIKit

//https://stackoverflow.com/a/3732812/6643923

typealias CorrectUIVC = EmoChatUIViewController //UIViewController

extension UIView {
    func firstAvailableUIViewController() -> CorrectUIVC? {
        // convenience function for casting and to "mask" the recursive function

        guard let notNullUIViewController = self.traverseResponderChainForUIViewController() else {
            return nil
        }

        return notNullUIViewController as? CorrectUIVC
    }

    func traverseResponderChainForUIViewController() -> Any? {
        let nextResponder = self.next

        if nextResponder is EmoChatUIViewController {
            return nextResponder as! CorrectUIVC
        } else if nextResponder is UIView {
            return (nextResponder as! UIView).traverseResponderChainForUIViewController()
        } else {
            return nil
        }
    }
}
