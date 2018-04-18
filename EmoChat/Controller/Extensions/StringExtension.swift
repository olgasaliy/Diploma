//
//  StringExtension.swift
//  EmoChat
//
//  Created by Olga Saliy on 10.02.18.
//  Copyright © 2018. All rights reserved.
//

import Foundation

extension String {

    func getPathExtension() -> String {
        return (self as NSString).pathExtension
    }

    //nik 2017-07-29
    func shrinkText(maxAllowableLength maxLength: Int = 30,
                    fillerSpaceBetween filler: String = "<...>") -> String {

        let mediana: Int = (maxLength - filler.characters.count) / 2
        let firstSymbol = String(characters.prefix(mediana))
        let lastSymbol = String(characters.suffix(mediana))
        let textShrinked: String = "☞" + firstSymbol + filler + lastSymbol

        return textShrinked

    }

}

//nik 2017-07-29
extension String: RegexCheckProtocol {

    mutating func shrinkUrlAddress(maxAllowableLength maxLength: Int = 25,
                                   fillerSpaceBetween filler: String = "<...>") {

        var newString: String = self
        if newString.characters.count > maxLength {

            let arrayOfLinks = self.getArrayOfRegexMatchesForURLInText(text: newString)

            if arrayOfLinks.count > 0 {
                for urlInText in arrayOfLinks {
                    let urlInTextWithOutTag = self.removeTransferProtocolTag(text: urlInText)
                    let shrinkedUrl = urlInTextWithOutTag.shrinkText(maxAllowableLength: maxLength,
                                                 fillerSpaceBetween: filler)

                    newString = newString.replacingOccurrences(of: urlInText, with: shrinkedUrl)
                }
            }
        }
        
        if self.characters.count > newString.characters.count {
            self = newString
        }
    }
}
