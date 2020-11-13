//
//  MovieCard.swift
//  sky-test
//
//  Created by Rafael Freitas on 12/11/2020.
//

import SwiftUI
import Combine
import KingfisherSwiftUI

struct MovieCard: View {
    
    var movie: Movie
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var isFavorite: Bool = false
    
    func makeFavorite() {
        print("action pressed")
    }
    
    var body: some View {
        NavigationLink(destination: DetailView(movie: movie)) {
            VStack {
                MovieCover(url: movie.cover_url)
                
                HStack {
                    Button(action: makeFavorite , label: {
                        Image(systemName: "heart")
                            .foregroundColor(isFavorite ? .gray : .red)
                            .font(.title3)
                    })
                    Text(movie.title)
                        .fontWeight(.bold)
                        .font(.caption2)
                }
                
            }
            .foregroundColor(.white)
        }
    }
    
}
