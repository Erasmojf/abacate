//
//  ContentView.swift
//  abacate
//
//  Created by Erasmo J.F Da Silva on 27/09/21.
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center,spacing: 20) {
                // MARK: - HEADER
                ScrollView(.horizontal,showsIndicators: false) {
                HStack(alignment: .top) {
                    HeaderView()
                   }
                }
                
                // MARK: - FOOTER
                VStack(alignment: .center, spacing: 20) {
                    Text("All about avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(8)
                    Text("Everything you wanted to know about avocados but weretoo afraid do ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                    
                }//VStack
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }//VStack
        }//ScrollView
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
