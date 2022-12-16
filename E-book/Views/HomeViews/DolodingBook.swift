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
                    ForEach(modelBook.reversed(),id:\.self) { item in
                        VStack(alignment: .leading) {
                            NavigationLink(destination: {
                                DiteksBookView()
                            }, label: {
                                ZStack(alignment: .bottomTrailing) {
                                    Image(item.ImageBook)
                                    HStack(alignment: .center,spacing: 2) {
                                        Image(systemName: "headphones")
                //                        Image(systemName: "line.diagonal")
                                        Image(systemName: "book")
                                    }.padding(.all)
                                        .font(.system(size: 10))
                                        .background(Color.white)
                                        .frame(width: 38,height: 16)
                                        .cornerRadius(7)
                                        .foregroundColor(Color.black)
                                        .padding([.bottom, .trailing], 8.0)
                                }
                            })
                      
                                .frame(width: 100,height: 144)
                                .cornerRadius(10)
                                .foregroundColor(Color.red)
                            HStack(alignment: .bottom,spacing: 2) {
                                Stars(rating: .constant(4))

                            }
                            Text(item.NameBook)
                                .font(.system(size: 16,weight: .semibold))
                                .frame(width: 104,height: 40)
                            Text(item.HomeMadeBook)
                                .font(.system(size: 12,weight: .light))
                              
                        }
                    }.foregroundColor(Color("Background6"))
                    }
                }
            }.padding(.leading)
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
