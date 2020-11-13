//
//  SwiftUIView.swift
//  sky-test
//
//  Created by Rafael Freitas on 11/11/2020.
//

import SwiftUI

class MainScreenModel: ObservableObject {
    
   @Published var movies = [Movie]()
    
    var url = "https://sky-exercise.herokuapp.com/api/Movies"
    
    func fetchData() {
        if let url = URL(string: url) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let data = try decoder.decode([Movie].self, from: safeData)
                            DispatchQueue.main.async {
                                self.movies = data
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            
            task.resume()
        }
    }
}

