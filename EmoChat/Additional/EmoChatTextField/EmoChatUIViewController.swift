//
//  EmoChatUIViewController.swift
//  CustomTextFieldEmoChat
//
//  Created by Olga Saliy on 09.02.18.
//  Copyright © 2018. All rights reserved.
//

//Superclass for all instances which have to use PopOverInfo box in textField

import UIKit

class EmoChatUIViewController: UIViewController {

}

extension EmoChatUIViewController: UIPopoverPresentationControllerDelegate {

    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
}
