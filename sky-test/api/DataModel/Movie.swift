//
//  Movie.swift
//  sky-test
//
//  Created by Rafael Freitas on 11/11/2020.
//

import Foundation

struct Movie: Codable, Identifiable {
    var title: String
    var overview: String
    var duration: String
    var release_year: String
    var cover_url: String
    var backdrops_url: [String]
    var id: String
}

