//
//  AdditionalCellView.swift
//  EmoChat
//
//  Created by Olga Saliy on 16.02.18.
//  Copyright © 2018. All rights reserved.
//

import UIKit

class AdditionalCellView: UIView {

    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var captionLabel: UILabel!
    var url: String?
    var dataForMediaInfoView: DataForMediaMessageInfoProtocol?

    func fullFillViewFromDataInfo(data: DataForMediaMessageInfoProtocol) {
        captionLabel.text = data.captionLabel
        url = data.url
    }

    func eraseAllFields() {
        captionLabel.text = ""
        url = ""
    }

    func setDataForMediaContentFromDictionary(dict: [String: Any?]) {

    }
}
