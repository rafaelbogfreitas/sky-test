//
//  ApiManager.swift
//  sky-test
//
//  Created by Rafael Freitas on 11/11/2020.
//

import Foundation

struct ApiManager {
    
    public func performRequest<T: Codable>(
        url: String,
        type: T.Type,
        onComplete: @escaping (T) -> Void
    ) -> Void {
        if let url = URL(string: url) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let data = try decoder.decode(type, from: safeData)
                            onComplete(data)
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
