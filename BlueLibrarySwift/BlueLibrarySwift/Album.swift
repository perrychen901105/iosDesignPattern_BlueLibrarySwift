//
//  Album.swift
//  BlueLibrarySwift
//
//  Created by chenzhipeng on 3/16/15.
//  Copyright (c) 2015 Raywenderlich. All rights reserved.
//

import UIKit

class Album: NSObject, NSCoding {
    var title: String!
    var artist: String!
    var genre: String!
    var coverUrl: String!
    var year: String!
    
    init(title: String, artist: String, genre: String, coverUrl: String, year: String) {
        super.init()
        
        self.title = title
        self.artist = artist
        self.genre = genre
        self.coverUrl = coverUrl
        self.year = year
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init()
        self.title = aDecoder.decodeObjectForKey("title") as String?
        self.artist = aDecoder.decodeObjectForKey("artist") as String?
        self.genre = aDecoder.decodeObjectForKey("genre") as String?
        self.coverUrl = aDecoder.decodeObjectForKey("coverUrl") as String?
        self.year = aDecoder.decodeObjectForKey("year") as String?
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(title, forKey: "title")
        aCoder.encodeObject(artist, forKey: "artist")
        aCoder.encodeObject(genre, forKey: "genre")
        aCoder.encodeObject(coverUrl, forKey: "coverUrl")
        aCoder.encodeObject(year, forKey: "year")
    }
    
    func description() -> String {
        return "title: \(title)" +
        "artist: \(artist)" +
        "genre: \(genre)" +
        "coverUrl: \(coverUrl)" +
        "year: \(year)"
    }
}
