//
//  TabBar.swift
//  E-book
//
//  Created by Аbubakr Futtaini on 14.12.2022.
//

import SwiftUI

struct TabBar: View {
    @State private var isShoing = false
    @State private var BarColor = false
    var body: some View {
        ZStack {
            Color("Background5")
                 .ignoresSafeArea(.all)
            ScrollView {
                VStack(alignment: .center,spacing: 22) {
                    HStack {
                        Spacer()
                        VStack {
                            Button(action: {
                                self.isShoing = false
                                self.BarColor.toggle()
                            }){
                                ZStack {
                                    Rectangle()
                                      .frame(width: 169,height: 30)
                                      .foregroundColor(BarColor ?  Color("Background2")  : Color("Background3"))
                                      .cornerRadius(7)
                                    Text("Книги")
                                  
                                }
                            }
                        }
                        
                        Spacer()
                        VStack {
                            Button(action: {
                                self.isShoing.toggle()
                                self.BarColor.toggle()
                            }){
                                ZStack  {
                                    Rectangle()
                                        .frame(width: 169,height: 30)
                                        .foregroundColor(!BarColor ? Color("Background2") : Color("Background3"))
                                        .cornerRadius(7)
                                    Text("Аудиокниги")
                                }
                            }
                        }
                        
                        Spacer()
                    }.padding(.all)
                        .foregroundColor(Color("Buttons3"))
                        .frame(width: 343, height: 36)
                        .background(Color("Background2"))
                        .cornerRadius(10)
                        .padding(.horizontal)
                       
                    if !isShoing {
                        HomeBookHaveInterint()
                    }; if isShoing {
                        AudioBooks(NameBook: "Рекомендуем", NamberBook: "18 аудиокниг")
                    }
                }
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
