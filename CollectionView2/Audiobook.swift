//
//  Audiobook.swift
//  CollectionView2
//
//  Created by Yoga Pratama on 02/11/18.
//  Copyright © 2018 YPA. All rights reserved.
//

import Foundation

struct Audiobook {
    let name: String
    let author: String
    let coverImage: String
    
    init(dictionary: AudiobookJSON) {
        self.name = dictionary["name"] as! String
        self.author = dictionary["artistName"] as! String
        self.coverImage = dictionary["artworkUrl100"] as! String
    }
}
