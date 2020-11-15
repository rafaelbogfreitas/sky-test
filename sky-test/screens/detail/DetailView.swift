//
//  DetailView.swift
//  sky-test
//
//  Created by Rafael Freitas on 12/11/2020.
//

import SwiftUI

struct DetailView: View {
    
    var movie: MovieEntity
    
    var body: some View {
        ZStack {
            ScrollView {
                
                VStack(alignment: .leading, spacing: 20) {
                    HStack (alignment: .bottom){
                        MovieCover(url: movie.cover_url)
                        TimeAndYear(duration: movie.duration, year: movie.release_year)
                    }
                    .padding()
                    
                    Group {
                        HStack {
                            Text("\(movie.liked ? "♥️ " : "")\(movie.title)")
                                .fontWeight(.bold)
                                .font(.title)
                        }
                        
                        Text(movie.overview)
                            .font(.body)
                    }
                    .padding(10)
                    
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 5)
                        .padding()
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 2, x: 0.0, y: 0.0)
                )
                
            }
        }
        .navigationTitle("Detalhes")
        .background(Color.black)
        .foregroundColor(.black)
    }
}



