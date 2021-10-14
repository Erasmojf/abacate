//
//  RipeningStagesView.swift
//  abacate
//
//  Created by Erasmo J.F Da Silva on 27/09/21.
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - PROPERTIES
    
    var ripeningStages: [Ripening] = ripeningData
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Spacer()
            VStack {
                HStack(alignment: .center, spacing:  25) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                }//HStack
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }//VStack
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
