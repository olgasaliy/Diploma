//
//  File.swift
//  EmoChat
//
//  Created by Olga Saliy on 09.02.18.
//  Copyright © 2018. All rights reserved.
//

import UIKit

struct DataForRestUIInfoView: DataForMediaMessageInfoProtocol {

    var captionLabel: String?
    var detailLabel: String?
    var urlImageIco: UIImage?
    var mainImage: UIImage?
    var url: String?

    init(url: String?) {
        self.url = url
    }

    init(captionLabel: String?,
         detailLabel: String?,
         urlImageIco: UIImage?,
         mainImage: UIImage?,
         url: String?) {

        self.url = url
        self.captionLabel = captionLabel
        self.detailLabel = detailLabel
        self.urlImageIco = urlImageIco
        self.mainImage = mainImage
    }

    init(dict dicTemData: [String: Any?]) {
        self.captionLabel = dicTemData["captionLabel"] as? String ?? ""
        self.detailLabel = dicTemData["detailLabel"] as? String ?? ""
        self.urlImageIco = dicTemData["urlImageIco"] as? UIImage ?? nil
        self.mainImage =  dicTemData["mainImage"] as? UIImage ?? nil
        self.url =  dicTemData["url"] as? String ?? ""
    }
}
