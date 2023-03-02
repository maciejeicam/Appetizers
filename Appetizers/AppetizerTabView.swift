//
//  ContentView.swift
//  Appetizers
//
//  Created by Maciej Michalik on 02/03/2023.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {       //dolny pasek
            AppetizerList()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }

        }
        .accentColor(Color("barColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}
