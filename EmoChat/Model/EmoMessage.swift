//
//  EmoMessage.swift
//  EmoChat
//
//  Created by Olga Saliy on 22.02.18.
//  Copyright © 2018. All rights reserved.
//

import Foundation

class EmoMessage: Message {
    
    var emoRecorded = false
    
    init(uid: String, senderId: String, time: Date, content: MessageContentDataType, emoRecorded: Bool) {
        super.init(uid: uid, senderId: senderId, time: time, content: content)
        self.emoRecorded = emoRecorded
    }
    
    override init(data: NSDictionary?, uid: String?) {
        super.init(data: data, uid: uid)
        self.emoRecorded = false
    }
}
