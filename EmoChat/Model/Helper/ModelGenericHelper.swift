//
//  modelGenericHelper.swift
//  EmoChat
//
//  Created by Olga Saliy on 20.02.18.
//  Copyright © 2018. All rights reserved.
//

typealias linkedTableType = [String: Bool]

protocol FireBaseEmoChat {

    var uuid: String {get set}
}

extension FireBaseEmoChat {

    var uuid: String {
        return getEmpyUUID()
    }

    func getEmpyUUID() -> String {
        return Auxiliary.getEmpyUUID()
    }

    func collectDataFromModelInstance (_ dataInArray: [FireBaseEmoChat?]?) -> linkedTableType {
        var tempArrayData = linkedTableType()

        if let notNullDataInInstance = dataInArray {
            for itemInArray in notNullDataInInstance {
                if let notNullDataInInstance = itemInArray {
                    tempArrayData.updateValue(true,
                                              forKey: notNullDataInInstance.uuid)
                }
            }
        }
        return tempArrayData
        
    }
}
