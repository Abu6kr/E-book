//
//  Home.swift
//  E-book
//
//  Created by Аbubakr Futtaini on 14.12.2022.
//

import SwiftUI

struct Home: View {
    @State private var ShowView = true
    var body: some View {
        NavigationView {
            ZStack {
                if ShowView {
                    HomeBookNointerint()
                } else if !ShowView {
                    TabBar()
                }
            }.onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                    ShowView = false
                }
            }
            .navigationBarTitle("Книги для тебя",displayMode: .inline)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


