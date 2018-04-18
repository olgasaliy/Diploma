//
//  PopUpVievController.swift
//  CustomTextFieldEmoChat
//
//  Created by Olga Saliy on 09.02.18.
//  Copyright © 2018. All rights reserved.
//

import UIKit

class PopOverViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!

    var infoLabelText:String? {
        didSet {
            setupInitData()
        }
    }

    var popoverPresentController: UIPopoverPresentationController? {
        return popoverPresentationController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func setupInitData() {
        if let notNullInfoLabelText = infoLabelText {
            infoLabel.text = notNullInfoLabelText
        }
    }

}
