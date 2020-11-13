//
//  MovieCover.swift
//  sky-test
//
//  Created by Rafael Freitas on 12/11/2020.
//

import SwiftUI
import KingfisherSwiftUI

struct MovieCover: View {
    
    var url: String
    
    var imageWidth: CGFloat? = nil
    
    var body: some View {
        
        KFImage(URL(string: url))
            .placeholder({
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .fill()
                        .foregroundColor(.gray)
                    
                    Image(systemName: "film")
                        .font(.title)
                }
            })
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

