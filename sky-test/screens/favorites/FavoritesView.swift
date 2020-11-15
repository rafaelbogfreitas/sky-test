//
//  FavoritesView.swift
//  sky-test
//
//  Created by Rafael Freitas on 15/11/2020.
//

import SwiftUI

struct FavoritesView: View {
    
    @State var movies: [MovieEntity]
    
    var favorites: [MovieEntity] {
        return movies.filter {
           return UserDefaults.standard.bool(forKey: $0.id)
        }
    }
    
    var body: some View {
        List(favorites) { movie in
            NavigationLink(destination: DetailView(movie: movie)) {
                HStack (alignment: .bottom){
                    MovieCover(url: movie.cover_url)
                    VStack(alignment: .leading) {
                        Text(movie.title)
                            .font(.body)
                            .fontWeight(.bold)
                        TimeAndYear(duration: movie.duration, year: movie.release_year)
                    }
                    .frame(width: 100)
                }
            }
            
        }
        .navigationTitle("Favoritos ♥️")
    }
}


