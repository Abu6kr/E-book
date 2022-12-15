//
//  Loading.swift
//  E-book
//
//  Created by Аbubakr Futtaini on 15.12.2022.
//

import SwiftUI

struct Loading: View {
    var body: some View {
        ZStack {
            Color("Background5")
                .ignoresSafeArea(.all)
            VStack(alignment: .center,spacing: 12) {
                Text("Добро пожаловать в мир книг")
                    .font(.system(size: 28,weight: .regular))
                    .multilineTextAlignment(.center)
                    .frame(width: 270)
                
                Text("Доступно 50 000 книг для чтения бесплатно. С платной подпиской можно читать литературу на иностранных языках")
                    .frame(width: 270)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 16,weight: .light))
                    .foregroundColor(Color("Background4"))
            }
            .foregroundColor(Color("Background6"))
        }
    }
}

struct Loading_Previews: PreviewProvider {
    static var previews: some View {
        Loading()
    }
}
