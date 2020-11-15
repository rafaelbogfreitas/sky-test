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
                        .foregroundColor(.white)
                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                        ZStack(alignment: .center) {
                            RoundedRectangle(cornerRadius: 5)
                                .fill()
                                .foregroundColor(.black)
                            VStack {
                                Image(systemName: "film")
                                Spacer()
                                Text("Cine")
                                Text("SKY")
                            }
                            .padding(20)
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                        }
                        .frame(width: 150, height: 200, alignment: .center)
                        .shadow(color: .gray, radius: 10, x: 0, y: 0)
                        ProgressView()
                    }
                    
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
