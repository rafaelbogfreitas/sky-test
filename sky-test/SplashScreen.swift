//
//  SplashScreen.swift
//  sky-test
//
//  Created by Rafael Freitas on 13/11/2020.
//

import SwiftUI

struct SplashScreen: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        VStack {
            if isActive {
                MainScreenView()
            } else {
                ZStack {
                    Rectangle()
                        .fill()
                        .foregroundColor(.black)
                    Image(systemName: "film")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
    
}





struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
