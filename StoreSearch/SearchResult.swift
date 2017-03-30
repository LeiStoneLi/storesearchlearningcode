//
//  SearchResult.swift
//  StoreSearch
//
//  Created by SrearAlex on 2017/3/25.
//  Copyright © 2017年 SrearAlex. All rights reserved.
//

import Foundation

class SearchResult {
    var name: String = ""
    var artistName: String = ""
    var artworkSmallURL = ""
    var artworkLargeURL = ""
    var storeURL = ""
    var kind = ""
    var currency = ""
    var price = 0.0
    var genre = ""
    
    func kindForDisplay() -> String {
        switch kind {
        case "album":
            return "Album"
        case "audiobook":
            return "Audio Book"
        case "book":
            return "Ebook"
        case "feature-movie":
            return "Movie"
        case "music-video":
            return "Music Video"
        case "podcast":
            return "Podcast"
        case "software":
            return "App"
        case "song":
            return "Song"
        case "tv-episode":
            return "TV Episode"
        default:
            return kind
        }
    }

}

func < (rsh: SearchResult, lsh: SearchResult) -> Bool {
    return rsh.name.localizedStandardCompare(lsh.name) == .orderedAscending
}

func > (rsh: SearchResult, lsh: SearchResult) -> Bool {
    return rsh.name.localizedStandardCompare(lsh.name) == .orderedDescending
}
