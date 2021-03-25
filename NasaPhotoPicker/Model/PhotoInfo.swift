//
//  PhotoInfo.swift
//  NasaPhotoPicker
//
//  Created by Jonathan Burnett on 23/03/2021.
//

import Foundation

struct PhotoInfo: Codable {
    var title: String
    var url: URL
    var copyright: String?
    
    enum CodingKeys: String, CodingKey {
        case title
        case url
        case copyright
    }
    
    init(from decoder: Decoder) throws {
        let valueContainer = try decoder.container(keyedBy: CodingKeys.self)
        
        self.title = try valueContainer.decode(String.self, forKey: CodingKeys.title)
        self.url = try valueContainer.decode(URL.self, forKey: CodingKeys.url)
        self.copyright = try? valueContainer.decode(String.self, forKey: CodingKeys.copyright)
    }
}
