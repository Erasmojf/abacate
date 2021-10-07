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
    var headers: [Header] = headersData
    var facts: [Fact] = FactsData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center,spacing: 20) {
                // MARK: - HEADER
                ScrollView(.horizontal,showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(headers) { item in
                        HeaderView(header: item)
                    }
                   }//HStack
                }
                // MARK: -  DISHES
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                DishesView()
                    .frame(maxWidth: 640)
                // MARK: - AVOCADO FACTS
                
                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { item in
                            FactsView(fact: item)
                        }//ForEach
                    }//HStack
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }//ScrollView
                
                
                
                // MARK: - FOOTER
                
                VStack(alignment: .center, spacing: 20) {
                    Text("All about avocados")
                        .font(.system(.title, design: .serif))
                        .modifier(TitleModifier())
                    Text("Everything you wanted to know about avocados but weretoo afraid do ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                        .frame(minHeight: 60)
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

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.system(.title, design: .serif))
        .foregroundColor(Color("ColorGreenAdaptive"))
        .padding(8)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData, facts: FactsData)
    }
}
