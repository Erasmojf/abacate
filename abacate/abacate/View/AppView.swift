//
//  AppView.swift
//  abacate
//
//  Created by Erasmo J.F Da Silva on 27/09/21.
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadoView()
                .tabItem ({ Image("tabicon-branch")
                    Text("Avocados")
                })
            ContentView()
                .tabItem ({  Image("tabicon-book")
                    Text("Recipes")
                })
            RipeningStagesView()
                .tabItem ({
                    Image("tabicon-avocado")
                    Text("Riapening")
                })
            SettingsView()
                .tabItem ({
                    Image("tabicon-settings")
                    Text("Settings")
                })
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
