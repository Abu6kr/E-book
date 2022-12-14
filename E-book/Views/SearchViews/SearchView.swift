//
//  SearchView.swift
//  E-book
//
//  Created by Аbubakr Futtaini on 14.12.2022.
//

import SwiftUI

struct SearchView: View {
    @State private var Search:String = ""
    var body: some View {
        ZStack {
            Color("Background5")
                 .ignoresSafeArea(.all)
            ScrollView(showsIndicators: false) {
                VStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Введи запрос",text: $Search)
                    }.padding(.all)
                        .frame(width: 343,height: 44)
                        .background(Color("Background7"))
                        .cornerRadius(10)
                        .foregroundColor(Color("Background6"))

                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
