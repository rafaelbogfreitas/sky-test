//
//  MovieCard.swift
//  sky-test
//
//  Created by Rafael Freitas on 12/11/2020.
//

import SwiftUI
import Combine

struct MovieCard: View {
    
    @State var movie: MovieEntity
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    func makeFavorite() {
        UserDefaults.standard.set(!movie.liked, forKey: movie.id)
        movie.liked = !movie.liked
    }
    
    var body: some View {
        NavigationLink(destination: DetailView(movie: movie)) {
            VStack (alignment: .leading) {
                MovieCover(url: movie.cover_url)
                
                HStack (alignment: .firstTextBaseline) {
                    Button(action: makeFavorite , label: {
                        Image(systemName: movie.liked ? "heart.fill" : "heart")
                            .foregroundColor(movie.liked ? .red : .gray)
                            .font(.title3)
                    })
                    
                    Text(movie.title)
                        .fontWeight(.bold)
                        .font(.caption2)
                        .lineLimit(1)
                }
                
            }
            .foregroundColor(.white)
        }
        
    }
}
