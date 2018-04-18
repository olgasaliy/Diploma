//
//  Auxiliary.swift
//  EmoChat
//
//  Created by Olga Saliy on 20.02.18.
//  Copyright © 2018. All rights reserved.
//

import Foundation

struct Auxiliary {

    static func getUUID() -> String {

        let uuid = UUID().uuidString
        return uuid
    }

    static func getEmpyUUID() -> String {
        return "00000000-0000-0000-0000-000000000000"
    }
}

