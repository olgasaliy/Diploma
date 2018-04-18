//
//  RirgtSingleConversationUITableViewCell.swift
//  EmoChat
//
//  Created by Olga Saliy on 09.02.18.
//  Copyright © 2018. All rights reserved.
//

import UIKit

class RightCell: CustomTableViewCell {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!

    var isReceived = false {
        didSet {
            if isReceived {
                activityIndicator.stopAnimating()
                activityIndicator.isHidden = true
                time.isHidden = false
                time.text = messageEntity?.time.formatDate()

            } else {
                time.isHidden = true
                activityIndicator.isHidden = false
                activityIndicator.startAnimating()
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}

class RightTextCell: RightCell {
    
    override var messageEntity: Message? {
        didSet {
            //or set media content in ui elements
            let text = NSMutableAttributedString(string: "")
            text.append(NSAttributedString(string: getTextForCellText(cell: self),
                                           attributes: [NSFontAttributeName : UIFont.systemFont(ofSize: CGFloat.init(15.0))]))

            message.attributedText = text
            
            setNullableDataInPreviewContainer()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}



