//
//  AlbumModel.swift
//  MCL
//
//  Created by Eduardo Gonzalez Melgoza on 20/05/24.
//

import Foundation
import SwiftData

@Model
final class Album {
    var title: String = ""
    var coverImage: Data?
    var shortDescription: String = ""
    var dateFrom: Date?
    var dateTo: Date?
    var location: String = ""
    var dateCreated: Date
    
    @Relationship(deleteRule: .cascade)
    var songs: [SongFromCatalog]
    
    @Relationship(deleteRule: .cascade)
    var entries: [Entry] = []
    
    init(title: String, coverImage: Data? = nil, shortDescription: String, dateFrom: Date? = nil, dateTo: Date? = nil, location: String, dateCreated: Date, songs: [SongFromCatalog], entries: [Entry]) {
        self.title = title
        self.coverImage = coverImage
        self.shortDescription = shortDescription
        self.dateFrom = dateFrom
        self.dateTo = dateTo
        self.location = location
        self.dateCreated = dateCreated
        self.songs = songs
        self.entries = entries
    }
}
