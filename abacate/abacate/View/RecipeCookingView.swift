//
//  RecipeCookingView.swift
//  abacate
//
//  Created by Erasmo J.F Da Silva on 08/10/21.
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol

import SwiftUI

struct RecipeCookingView: View {
    // MARK: - PROPERTIES
    
    var recipe: Recipe
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
               Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }//HStack
            HStack(alignment: .center, spacing: 2) {
               Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }//HStack
            HStack(alignment: .center, spacing: 2) {
               Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }//HStack
        }//HStack
        .font(.footnote)
        .foregroundColor(Color.gray)
    }
}

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 300, height: 60))
    }
}
