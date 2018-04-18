//
//  LeftSingleConversationUITableViewCell.swift
//  EmoChat
//
//  Created by Olga Saliy on 09.02.18.
//  Copyright © 2018. All rights reserved.
//

import UIKit

//you can derive from this class for your own left message prototypes
class LeftCell: CustomTableViewCell {
    
    //TODO: displaying sender's name in all left cells
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

class LeftTextCell: LeftCell {
    
    var name: NSMutableAttributedString?
    
    override var messageEntity: Message? {
        didSet {
            //or set media content in ui elements
            let text = NSMutableAttributedString(string: "")
            if let enterText = name {
                text.append(enterText)
            }
            text.append(NSAttributedString(string: getTextForCellText(cell: self),
                                           attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: CGFloat.init(15.0))]))

            message.attributedText = text

            setNullableDataInPreviewContainer()
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
