//
//  Conversation.swift
//  EmoChat
//
//  Created by Olga Saliy on 05.02.18.
//  Copyright © 2018. All rights reserved.
//

import Foundation

enum ConversationType
{
    case unknownType
    case dialog
    case multipleChat
}

class Conversation {

    var name: String?
    var uuid: String
    var usersInConversation: [User] = []
    var messagesInConversation: [Message]? = []
    var lastMessage: Message?
    var lastMessageTimeStamp: Date?
    var type: ConversationType {
        get {
            switch usersInConversation.count {
            case 2:
                return .dialog
            case 3..<100:
                return .multipleChat
            default:
                return .unknownType
            }
        }
    }
    var imageURL: String?
    
    init(conversationId: String, usersInConversation: [User], messagesInConversation: [Message]?, lastMessage: Message?) {
        self.lastMessage = lastMessage
        self.uuid = conversationId
        self.usersInConversation = usersInConversation
        self.messagesInConversation = messagesInConversation
        
    }
    
    init(conversationId: String, usersInConversation: [User], messagesInConversation: [Message]?, lastMessage: Message?, lastMessageTimeStamp: Date, name: String?) {
        self.lastMessage = lastMessage
        self.uuid = conversationId
        self.usersInConversation = usersInConversation
        self.messagesInConversation = messagesInConversation
        self.lastMessageTimeStamp = lastMessageTimeStamp
        self.name = name
    }
    
}
