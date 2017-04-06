//
//  SearchResult.swift
//  StoreSearch
//
//  Created by SrearAlex on 2017/3/25.
//  Copyright © 2017年 SrearAlex. All rights reserved.
//

import Foundation

private let displayNamesForKind = [
    "album": NSLocalizedString("Album", comment: "Localized kind: Album"),
    "audiobook": NSLocalizedString("Audio Book", comment: "Localized kind: Audio Book"),
    "book": NSLocalizedString("Book", comment: "Localized kind: Book"),
    "ebook": NSLocalizedString("E-Book", comment: "Localized kind: E-Book"),
    "feature-movie": NSLocalizedString("Movie", comment: "Localized kind: Feature Movie"),
    "music-video": NSLocalizedString("Music Video", comment: "Localized kind: Music Video"),
    "podcast": NSLocalizedString("Podcast", comment: "Localized kind: Podcast"),
    "software": NSLocalizedString("App", comment: "Localized kind: Software"),
    "song": NSLocalizedString("Song", comment: "Localized kind: Song"),
    "tv-episode": NSLocalizedString("TV Episode", comment: "Localized kind: TV Episode"),
]

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
    /*
    func kindForDisplay() -> String {
        switch kind {
        case "album":
            return NSLocalizedString("Album", comment: "Localized kind: Album")
        case "audiobook":
            return NSLocalizedString("Audio Book", comment: "Localized kind: Audio Book")
        case "book":
            return NSLocalizedString("Book", comment: "Localized kind: Book")
        case "ebook":
            return NSLocalizedString("E-book", comment: "Localized kind: E-book")
        case "feature-movie":
            return NSLocalizedString("Movie", comment: "Localized kind: Movie")
        case "music-video":
            return NSLocalizedString("Music Video", comment: "Localized kind: Music Video")
        case "podcast":
            return NSLocalizedString("Podcast", comment: "Localized kind: Podcast")
        case "software":
            return NSLocalizedString("App", comment: "Localized kind: App")
        case "song":
            return NSLocalizedString("Song", comment: "Localized kind: Song")
        case "tv-episode":
            return NSLocalizedString("TV Episode", comment: "Localized kind: TV Episode")
        default:
            return kind
        }
    }
    */
    func kindForDisplay() -> String {
        /*
        if let name = displayNamesForKind[kind] {
            return name
        } else {
            return kind
        }
        */
        return displayNamesForKind[kind] ?? kind
    }

}

func < (rsh: SearchResult, lsh: SearchResult) -> Bool {
    return rsh.name.localizedStandardCompare(lsh.name) == .orderedAscending
}

func > (rsh: SearchResult, lsh: SearchResult) -> Bool {
    return rsh.name.localizedStandardCompare(lsh.name) == .orderedDescending
}
