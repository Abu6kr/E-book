//
//  PageOfAuthor.swift
//  E-book
//
//  Created by Аbubakr Futtaini on 14.12.2022.
//

import SwiftUI

struct PageOfAuthor: View {
    @State private var Fooloing = false
    @State var TextMore = false

    var body: some View {
        ZStack {
            Color("Background5")
                 .ignoresSafeArea(.all)
            ScrollView(showsIndicators: false) {
                VStack(alignment: .center) {
                    VStack(alignment: .center, spacing: 8) {
                        Rectangle()
                            .frame(width: 100,height: 104)
                            .cornerRadius(12)
                            .foregroundColor(Color.red)
                        
                        Text("Юваль Ной Харари")
                            .font(.system(size: 18,weight: .regular))
                    }
                     Button(action: {
                         self.Fooloing.toggle()
                     }, label: {
                         VStack {
                             Text(Fooloing ? "подписчик" : "Подписаться")
                         }.padding(.all)
                             .frame(width: 164,height: 48)
                             .background(Fooloing ? Color(red: 1.03, green: 0.829, blue: 0.788): Color(red: 0.604, green: 0.114, blue: -0.005))
                             .cornerRadius(10)
                             .foregroundColor(Fooloing ? .black: .white)
                     })
                    VStack {
                        Text("Мы будем присылать тебе уведомления о новых книгах автора в нашем каталоге")
                            .multilineTextAlignment(.center)
                            .font(.system(size: 12,weight: .regular))
                            .frame(width: 250)
                    }
                    VStack {
                        Text("Юваль Ной Харари  —  44-летний военный историк, футуролог, писатель, автор международного бестселлера «Sapiens: краткая история человечества». Его книги переведены на 60 языков мира и разошлись тиражом в 27,5 млн экземпляров."); if  TextMore  {
                            Text("Юваль Ной Харари  —  44-летний военный историк, футуролог, писатель, автор международного бестселлера «Sapiens: краткая история человечества». Его книги переведены на 60 языков мира и разошлись тиражом в 27,5 млн экземпляров.Харари родился в Израиле, в городе Кирьят-Ата на севере Израиля. Он умел читать уже в три года, с восьми лет учился в классе для интеллектуально одар…")
                        }
                        
                    }.padding(.top)
                        .font(.system(size: 16,weight: .regular))
                        .frame(width: 344)
                    HStack{
                        Spacer()
                        Button(action: {
                            self.TextMore.toggle()
                        }, label: {
                            Text(TextMore ? "Lass " : "Читать полностью" )
                                .foregroundColor(Color(red: 0.604, green: 0.114, blue: -0.005))
                        })
                      
                    }.padding(.horizontal)
                    DolodingBook(NameBook: "Книги автора", NamberBook: "4 книги")
                }.padding(.horizontal)
            }
        }
    }
}

struct PageOfAuthor_Previews: PreviewProvider {
    static var previews: some View {
        PageOfAuthor()
    }
}
