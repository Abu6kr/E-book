//
//  SearchGenres.swift
//  E-book
//
//  Created by Аbubakr Futtaini on 15.12.2022.
//

import SwiftUI


struct SearchGenres: View {
    var vGridLayout = [
        GridItem(.flexible(minimum: 150)),
        GridItem(.flexible(minimum: 150)),
        GridItem(.flexible(minimum: 150)),
        GridItem(.flexible(minimum: 150)),

    ]
    var body: some View {
            VStack(alignment: .center,spacing: 22) {
                ScrollView(.horizontal,showsIndicators: false) {
                    LazyVGrid(columns: vGridLayout) {
                    ForEach(moeNames,id:\.self) { item in
                        VStack {
                            Text(item.names)
                                .font(.system(size: 16,weight: .regular))
                        }
                        .foregroundColor(Color.black)
                        .frame(height: 40)
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                        .background(Color("Background7").cornerRadius(10)))
                        .foregroundColor(Color.gray)
                    }
                }
            }
                DolodingBook(NameBook: "Книги по дизайну", NamberBook: "26 книг")

        }
    }
}

struct SearchGenres_Previews: PreviewProvider {
    static var previews: some View {
        SearchGenres()
    }
}
