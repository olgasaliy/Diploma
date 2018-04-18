//
//  RestIU-Urlembed.swift
//  EmoChat
//
//  Created by Olga Saliy on 09.02.18.
//  Copyright © 2018. All rights reserved.
//

import Foundation

final class RestUIUrlembed: RestUIStrategy {
    var strategyType: UrlParserResourseType
    var httpAdress:String
    var apiKey:String

    init() {
        self.strategyType = UrlParserResourseType.urlembed
        self.apiKey = "WDYyREZLSlU2TUk0Qlk2V0xMUklYM01JS0M1VUxJREZXVDZMUU1IQ0tXREhCN0s1TURGQT09PT0"
        self.httpAdress = "https://urlembed.com/json"
    }

    func getJsonData(forUrl urlResource:String,
                     completion:@escaping CompletionModel) {
        let urlForConnect = getLinkForResponse(forUrl: urlResource)
        JSONParser.sharedInstance.getJSONDataFromURL(forUrl: urlForConnect) {
            (jsonData: JsonDataType?) in
            if let notNullJsonData = jsonData {
                let urlModel = UrlembedModel(json: notNullJsonData,
                                             originUrl: urlResource,
                                             requestUrl: urlForConnect)

                completion(urlModel)
            } else {
                completion(nil)
            }
        }
    }

    func getData(forUrl urlResource:String,
                 completion:@escaping CompletionModel) {

        getJsonData(forUrl: urlResource) {
            (urlModel: ParserDataModel?) in

            completion(urlModel)
        }
    }

    func getLinkForResponse(forUrl urlResource:String) -> String {
        let backSlashString = "/"

        return String(self.httpAdress+backSlashString+self.apiKey+backSlashString+urlResource)
    }
}
