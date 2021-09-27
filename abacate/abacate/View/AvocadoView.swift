//
//  AvocadoView.swift
//  abacate
//
//  Created by Erasmo J.F Da Silva on 27/09/21.
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol

import SwiftUI

struct AvocadoView: View {
    // MARK: - PROPERTIES
    @State private var pulsateAnimation: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentLight"), radius: 12,x: 8, y: 0)
                .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                .opacity(self.pulsateAnimation ? 1 : 0.9)
                .animation(Animation.easeIn(duration: 1.5).repeatForever(autoreverses: true))

            VStack {
                Text("Avocados".uppercased())
                .font(.system(size: 42,weight: .bold, design: .serif))
                .foregroundColor(Color.white)
                .padding()
                .shadow(color: Color("ColorBlackTransparentLight"), radius: 4, x: 0, y: 4)
            Text("""
                 Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
                 """)
                
                .lineLimit(nil )
                .font(.system(.headline, design: .serif))
                .foregroundColor(Color("ColorGreenLight"))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640, minHeight: 120)
             }
            .padding()
            
            Spacer()
        }
        
        .background(
           Image("background")
            .resizable()
            .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            self.pulsateAnimation.toggle()
        })
    }
}

struct AvocadoView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadoView()
    }
}
