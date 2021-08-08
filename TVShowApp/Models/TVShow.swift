//
//  TVShow.swift
//  TVShowApp
//
//  Created by Jessica Perez on 8/8/21.
//

import Foundation

struct TVShow: Decodable, Identifiable {
    var id: Int
    var url: URL
    var name: String
    var type:String
    var language: String
    var genres: [String]
    var status: String
    var officialSite: URL?
    var scheduule: Schedule
    var rating: Rating
    var image: TVShowImage
    var summary: String
}
