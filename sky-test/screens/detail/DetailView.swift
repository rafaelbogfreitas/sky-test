//
//  DetailView.swift
//  sky-test
//
//  Created by Rafael Freitas on 12/11/2020.
//

import SwiftUI

struct DetailView: View {
    
    var movie: Movie
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    MovieCover(url: movie.cover_url)
                    Text(movie.title)
                        .fontWeight(.bold)
                        .font(.title)
                    Text(movie.overview)
                        .font(.body)
            
                    HStack(
                        alignment: .center,
                        spacing: 20
                    ) {
                        
                        Group {
                            
                            HStack {
                                Image(systemName: "clock")
                                Text(movie.duration)
                            }
                            
                            HStack {
                                Image(systemName: "calendar")
                                Text(movie.release_year)
                            }
                        }
                        .font(.body)
                        
                    }
                }
                .padding()
            }
        }
        .foregroundColor(.black)
    }
}


