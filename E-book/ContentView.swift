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
            HomeView()
                .tabItem {
                Text("Рекомендации")
                Image(systemName: "lightbulb")
            }
            MyBookView()
                .tabItem {
                Text("Мои книги")
                Image(systemName: "book.fill")
            }
            SearchView()
                .tabItem {
                Text("Поиск")
                Image(systemName: "magnifyingglass")
            }
          ProfileView()
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
