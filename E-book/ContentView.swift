//
//  ContentView.swift
//  E-book
//
//  Created by Аbubakr Futtaini on 14.12.2022.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().barTintColor = UIColor(named: "Background7")
    }
    var body: some View {
        TabView {
            Home()
                .tabItem {
                Text("Рекомендации")
                Image(systemName: "lightbulb")
            }
            Text("Мои книги")
                .tabItem {
                Text("Мои книги")
                Image(systemName: "book.fill")
            }
            Text("Поиск")
                .tabItem {
                Text("Поиск")
                Image(systemName: "magnifyingglass")
            }
          ProfileEmptyState()
                .tabItem {
                Text("Профиль")
                Image(systemName: "person")
            }
        }
        .accentColor(Color("Buttons"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
