//
//  MoviesGrid.swift
//  sky-test
//
//  Created by Rafael Freitas on 12/11/2020.
//

import SwiftUI

struct MoviesGrid: View {
    
    var movies: [Movie]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        Text("Uma seleção de filmes imperdíveis")
            .font(.caption2)
            .fontWeight(.light)
        ZStack {
            RoundedRectangle(cornerRadius:0)
                .fill()
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
