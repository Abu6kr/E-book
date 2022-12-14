//
//  SwiftUIView.swift
//  E-book
//
//  Created by Аbubakr Futtaini on 14.12.2022.
//

import SwiftUI

struct DolodingBook: View {
    var reating : Int = 4
    var NameBook: String
    var NamberBook : String
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(NameBook)
                    Text(NamberBook)
                } .foregroundColor(Color("Background6"))
                
                Spacer()
                NavigationLink(destination: {
                    AllBookList(HowMashBook: "4 книги")
                }, label: {
                    Text("Все")
                        .foregroundColor(Color(red: 0.604, green: 0.114, blue: -0.005))
                })
               
            }.padding(.horizontal)
            ScrollView(.horizontal,showsIndicators: false) {
                HStack {
                    ForEach(0 ..< 5) { item in
                        TheBookDolding()
                    }
                }
            }.padding(.leading)
        }
            .frame(width: 375,height: 324)
            .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(lineWidth: 2)
                            .background(Color("Background7").cornerRadius(15))
                    )
            .foregroundColor(Color.gray.opacity(0.3))
            .padding(.leading,40)
            .foregroundColor(Color("Background6"))
    }
}

struct DolodingBook_Previews: PreviewProvider {
    static var previews: some View {
        DolodingBook(NameBook: "Загруженные книги", NamberBook: "3 книги")
    }
}
