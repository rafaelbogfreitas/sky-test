//
//  TimeAndYear.swift
//  sky-test
//
//  Created by Rafael Freitas on 15/11/2020.
//

import SwiftUI

struct TimeAndYear: View {
    
    var duration: String
    
    var year: String
    
    var body: some View {
        Group {
            VStack (alignment: .leading) {
                HStack {
                    Image(systemName: "clock")
                    Text(duration)
                }
                
                HStack {
                    Image(systemName: "calendar")
                    Text(year)
                }
            }
        }
        .font(.body)
    }
}

