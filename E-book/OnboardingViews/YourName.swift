//
//  YourName.swift
//  E-book
//
//  Created by Аbubakr Futtaini on 16.12.2022.
//

import SwiftUI

struct YourName: View {
    @State var  UorNamr: String = ""
    var body: some View {
        ZStack {
            Color("Background5")
                .ignoresSafeArea(.all)
            VStack {
                Image("WhatYouName")
                VStack(alignment: .center,spacing: 21) {
                    Text("Как к тебе обращаться? ")
                        .font(.system(size: 28,weight: .regular))
                    
                    HStack {
                        TextField("Whats your name",text: $UorNamr)
                     
                    }.padding(.all)
                        .frame(width: 343,height: 44)
                        .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                        .background(Color("Background7").cornerRadius(10)))
                        .foregroundColor(Color.black.opacity(0.3))
                }
                Spacer()
                Button(action: {
                    print("save  the name")
                }, label: {
                    HStack(alignment: .center) {
                        Text("Сохранить")
                    }.padding(.all)
                        .frame(width: 343,height: 48)
                        .background(Color("Background8"))
                        .cornerRadius(10)
                        .foregroundColor(Color("Background9"))
                        
                })
            }
        }
    }
}

struct YourName_Previews: PreviewProvider {
    static var previews: some View {
        YourName()
    }
}
