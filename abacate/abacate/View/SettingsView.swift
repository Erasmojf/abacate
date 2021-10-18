//
//  SettingsView.swift
//  abacate
//
//  Created by Erasmo J.F Da Silva on 27/09/21.
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @State private var enableNotification: Bool = true
    @State private var backroundRefresh: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // MARK: - HEADER
            VStack(alignment: .center, spacing:  5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorGreenLight"), radius: 8, x: 0, y: 4)
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            Form {
                // MARK: - Section #1
                Section(header: Text("General Settings")){
                    Toggle(isOn: $enableNotification) {
                    Text("Enable notification")
                  }//Toggle
                    Toggle(isOn: $backroundRefresh) {
                        Text("Background refresh")
                    }
                }
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack {
                            Text("Product")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("iPhone & iPad")
                            
                        }//HStack
                        HStack {
                            Text("Developer")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("Maia / Erasmo")
                            
                        }//HStack
                        HStack {
                            Text("Designer")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("Inocencia")
                        }//HStack
                        HStack {
                            Text("Website")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("Erasmojf.io")
                        }//HStack
                        HStack {
                            Text("Version")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("1.0.0")
                        }//HStack
                    } else {
                        HStack {
                            Text("Personal message")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("Happy Coding")
                        }
                    }//HStack
                    
                }
            }//Form
        }//VStack
        .frame(maxWidth: 640)
    }//VStack
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
