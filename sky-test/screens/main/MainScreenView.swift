
//  MainScreeView.swift
//  sky-test
//
//  Created by Rafael Freitas on 11/11/2020.
//

import SwiftUI

struct MainScreenView: View {
    
    @ObservedObject var mainScreenModel = MainScreenModel()

    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .fill()
                .foregroundColor(.black)
            NavigationView {
                Group {
                    if mainScreenModel.movies.count == 0 {
                        ProgressView()
                    } else {
                        ScrollView {
                            MoviesGrid(movies: mainScreenModel.movies)
                        }
                    }
                }
                .navigationTitle("Cine Sky")
            }
            .font(.caption2)
        }
        .foregroundColor(.black)
        
        .onAppear {
            mainScreenModel.fetchData()
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
