//
//  SingleConversationCurrentMessage.swift
//  EmoChat
//
//  Created by Olga Saliy on 09.02.18.
//  Copyright © 2018. All rights reserved.
//

protocol CustomTextViewProtocol: class {
    func setText(text: String)
    func setEditingStyle(flag: Bool)
}

class ConversationMessage {

    static var sharedInstance = ConversationMessage()

    weak var linkedTextViewDelegate: CustomTextViewProtocol?

    var content: String {
        didSet {
            originContent = content

            //try to make representation for media content
            var theAddedText:String = ""
            switch type {
            case .text:
                break
            case .audio:
                theAddedText = "🎤"
                fallthrough
            //case .photo, .video
            default:
                content =  theAddedText + type.rawValue
                break
            }

            linkedTextViewDelegate?.setText(text: content)
        }
    }
    var type: MessageContentType {
        didSet {
            //only for text should left editing style
            linkedTextViewDelegate?.setEditingStyle(flag: type == MessageContentType.text)
        }
    }
    var originContent: String

    init() {
        type = .text
        content = ""
        originContent = ""
    }

    private func setInitData() {
        type = .text
        content = ""
    }

    func setData(content: String,
                 type: MessageContentType) {
        self.type = type
        self.content = content
    }

    func eraseAllData() {
        setInitData()
    }
}
