//
//  MovieEntity.swift
//  sky-test
//
//  Created by Rafael Freitas on 14/11/2020.
//

import Foundation
import Combine

struct MovieEntity: Identifiable {
    
    var title: String
    var overview: String
    var duration: String
    var release_year: String
    var cover_url: String
    var id: String
    var liked: Bool = false
    
    static func mapper(movies: [Movie]) -> [MovieEntity] {
        
        movies.map {
        
            let liked = UserDefaults.standard.bool(forKey: $0.id)
            
            return MovieEntity(
                title: $0.title,
                overview: $0.overview,
                duration: $0.duration,
                release_year: $0.release_year,
                cover_url: $0.cover_url,
                id: $0.id,
                liked: liked
            )
        }
    }
}


