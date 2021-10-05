//
//  FactsView.swift
//  abacate
//
//  Created by Erasmo J.F Da Silva on 05/10/21.
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol

import SwiftUI

struct FactsView: View {
    var body: some View {
        ZStack {
            Text("It’s little wonder there are so many health benefits when a single serve of avocado (1/4 or 50g) boasts healthy fats, fibre, folate, niacin, vitamins C, B5, E & K, potassium and antioxidants.")
                .padding(.leading, 55)
                .padding(.trailing, 10)
                .padding(.vertical, 3)
                .frame(width: 300, height: 135, alignment: .center)
                .background(LinearGradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")], startPoint: .leading, endPoint: .trailing))
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
            .foregroundColor(Color.white)
            Image("avocado-fact-2")
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(
                   Circle()
                    .fill(Color.white)
                    .frame(width: 74, height: 74, alignment: .center)
                )
                .background(
                   Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .trailing, endPoint: .leading))
                    .frame(width: 82, height: 82, alignment: .center)
                )
                .background(
                  Circle()
                    .fill(Color("ColorAppearenceAdaptive"))
                    .frame(width: 90, height: 90, alignment: .center)
                )
                .offset(x: -150)
        }//ZStack
    }
}

struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView()
            .previewLayout(.fixed(width: 400, height: 220))
    }
}
