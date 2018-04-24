//
//  MessageConversationCell.swift
//  EmoChat
//
//  Created by Olga Saliy on 09.02.18.
//  Copyright © 2018. All rights reserved.
//

import UIKit

class MessageConversationCell: UITableViewCell {
    
    @IBOutlet weak var conversationImageView: UIImageView!
    @IBOutlet weak var conversationNameLabel: UILabel!
    @IBOutlet weak var conversationTimeLabel: UILabel!
    @IBOutlet weak var lastMessageLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
