//
//  HomeBookNointerint.swift
//  E-book
//
//  Created by Аbubakr Futtaini on 14.12.2022.
//

import SwiftUI

struct HomeBookNointerint: View {
    var body: some View {
        ZStack(alignment: .top) {
           Color("Background5")
                .ignoresSafeArea(.all)
            ScrollView(showsIndicators: false) {
                VStack {
                    //   TabViews()
                    VStack(alignment: .center,spacing: 13) {
                        Image("NoInternt")
                            .resizable()
                            .frame(width: 114,height: 150)
                        Text("Нет интернета")
                            .font(.system(size: 18,weight: .bold))
                        Text("Ты можешь читать и слушать книги, загруженные на твоё устройство")
                            .frame(width: 305,height: 40)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 16,weight: .semibold))
                    }.padding(.top)
                        .foregroundColor(Color("Background6"))
                    DolodingBook(NameBook: "Загруженные книги", NamberBook: "3 книги")
                        .padding(.top,22)
                    
                }
            }
        }
    }
}

struct HomeBookHaveInterint:View  {
    var body: some View{
        ZStack(alignment: .top) {
            Color("Background5")
                 .ignoresSafeArea(.all)
            ScrollView {
                VStack(alignment: .center,spacing: 30) {
                    //TabViews()
                    DolodingBook(NameBook: "Рекомендуем", NamberBook: "29 книг")
                    DolodingBook(NameBook: "Новинки этой недели", NamberBook: "47 книг")
                    //BarBook()
                }
            }
        }
    }
}



struct HomeBookNointerint_Previews: PreviewProvider {
    static var previews: some View {
        HomeBookNointerint()
    }
}
