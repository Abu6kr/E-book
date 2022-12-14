//
//  AllBookList.swift
//  E-book
//
//  Created by Аbubakr Futtaini on 14.12.2022.
//

import SwiftUI

struct AllBookList: View {
    var HowMashBook : String
    var body: some View {
        ZStack {
            Color("Background5")
                 .ignoresSafeArea(.all)
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text(HowMashBook)
                    ForEach(0 ..< 5) { item in
                        BookLiteMo()
                    }
                }
            }
        }
    }
}

struct AllBookList_Previews: PreviewProvider {
    static var previews: some View {
        AllBookList(HowMashBook: "4 книги")
    }
}
