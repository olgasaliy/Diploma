//
//  LogoTableViewCell.swift
//  EmoChat
//
//  Created by Olga Saliy on 12.02.18.
//  Copyright © 2018. All rights reserved.
//

import UIKit

class LogoTableViewCell: UITableViewCell {

    @IBOutlet var conversTitle: UILabel!
    @IBOutlet var conversLogo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
