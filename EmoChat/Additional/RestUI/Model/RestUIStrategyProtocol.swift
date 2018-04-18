//
//  RestUIStrategyProtocol.swift
//  EmoChat
//
//  Created by Olga Saliy on 09.02.18.
//  Copyright © 2018. All rights reserved.
//

protocol RestUIStrategy {
    var strategyType: UrlParserResourseType {get}
    var apiKey: String {get}
    var httpAdress: String {get}

    func getLinkForResponse(forUrl urlResource:String) -> String
    func getData(forUrl urlResource:String,
                 completion:@escaping CompletionModel)
}

//MARK: data type
enum UrlParserResourseType: Int {
    case urlembed = 0//, s500px
}

//MARK:- Strategy data model
protocol ParserDataModel {

}


