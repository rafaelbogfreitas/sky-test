//
//  MoviesGrid.swift
//  sky-test
//
//  Created by Rafael Freitas on 12/11/2020.
//

import SwiftUI

struct MoviesGrid: View {
    
    @State var movies: [MovieEntity]
    
    var favorites: [MovieEntity] {
        return movies.filter { $0.liked }
    }
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        VStack {
            NavigationLink(destination: FavoritesView(movies: movies)) {
                HStack (spacing: 10) {
                    Text("Ver Todos os Favoritos")
                        .foregroundColor(.black)
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                }
                .padding()
            }
            .background(
                RoundedRectangle(cornerRadius: 50)
                    .fill()
                    .foregroundColor(.white)
            )
            .padding()
            
            Text("Uma seleção de filmes imperdíveis")
                .font(.caption2)
                .fontWeight(.light)
                .foregroundColor(.white)
                .padding()
            
            LazyVGrid(columns: columns){
                ForEach(movies) { movie in
                    MovieCard(movie: movie)
                }
            }
            .foregroundColor(.black)
            .padding()
            
        }
    }
}
