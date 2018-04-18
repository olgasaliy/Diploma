//
//  File.swift
//  EmoChat
//
//  Created by Olga Saliy on 09.02.18.
//  Copyright © 2018. All rights reserved.
//

import Foundation

class MessageModelAudio: MessageModelGeneric {

    //prepare data for conversation's cell
    func getParseDataFromResource(delaySeconds delay: Int = 0,
                                  completion: @escaping(_ allDone: Bool) -> Void) {

        DispatchQueue.global(qos: .userInitiated).asyncAfter(
            deadline: .now() + .seconds(delay), execute: {[unowned self] in

                //smth to do...
                let _ = self.content
                
                DispatchQueue.main.async {
                    
                    completion(true)
                }
        })
    }

}
