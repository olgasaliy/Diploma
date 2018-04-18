//
//  UserTableViewCell.swift
//  EmoChat
//
//  Created by Olga Saliy on 12.02.18.
//  Copyright © 2018. All rights reserved.
//

import Foundation
import UIKit

class UserTableViewCell: UITableViewCell {
    
    @IBOutlet var userPic: UIImageView!
    @IBOutlet var userName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
