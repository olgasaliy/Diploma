//
//  MessageModelGeneric.swift
//  EmoChat
//
//  Created by Olga Saliy on 20.02.18.
//  Copyright © 2018. All rights reserved.
//

import Foundation

protocol DataForMediaMessageInfoProtocol {
    var captionLabel: String? {get set}
    var url: String? {get set}
}

class MessageModelGeneric: RegexCheckProtocol, Hashable {
    weak var message: Message?

    var dataForMediaInfoView: DataForMediaMessageInfoProtocol?

    //get data from model
    var senderId: String {
        return message?.senderId ?? ""
    }
    var uid: String? {
        return message?.uid
    }
    var time: Date? {
        return message?.time
    }
    var content:MessageContentDataType? {
        return message?.content
    }
    var messageText: String {
        return content?.content ?? ""
    }

    //MARK: class functions
    init() {

    }

    deinit {
        message = nil
    }

    convenience init(message: Message) {
        self.init()
        self.message = message
    }

    //MARK: hashable protocol
    var hashValue: Int {
        return self.uid?.hashValue ?? 0
    }

    static func ==(lhs: MessageModelGeneric, rhs: MessageModelGeneric) -> Bool {
        return lhs.uid == rhs.uid
    }
}
