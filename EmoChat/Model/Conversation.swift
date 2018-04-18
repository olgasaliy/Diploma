//
//  Conversation.swift
//  EmoChat
//
//  Created by Olga Saliy on 05.02.18.
//  Copyright © 2018. All rights reserved.
//

import Foundation

class Conversation {

    //название
    var name: String?
    var uuid: String
    var usersInConversation: [User] = []
    var messagesInConversation: [Message]? = []
    var lastMessage: Message?
    var lastMessageTimeStamp: Date?
    
    
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
