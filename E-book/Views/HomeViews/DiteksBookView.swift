//
//  DiteksBookView.swift
//  E-book
//
//  Created by Аbubakr Futtaini on 14.12.2022.
//

import SwiftUI

struct DiteksBookView: View {
    @State var createAccunt:Bool = false
    @State var presentSheet = false
    @State var TextMore = false

    var body: some View {
            ZStack {
                Color("Background5")
                     .ignoresSafeArea(.all)
            ScrollView(showsIndicators: false) {
                VStack {
                    VStack {
                        ZStack(alignment: .bottomTrailing) {
                            Rectangle()
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
                            .frame(width: 150,height: 200)
                            .cornerRadius(10)
                            .foregroundColor(Color.red)
                        Text("Сюзан Нейпир")
                        Text("Волшебные миры Хаяо Миядзаки")
                    }
                    HStack(spacing: 40) {
                        VStack {
                           Image(systemName: "star")
                                .font(.system(size: 20,weight: .bold))
                                .foregroundColor(Color("Background8"))
                                .frame(width: 48,height: 48)
                                .background(
                                            RoundedRectangle(cornerRadius: 50)
                                                .stroke(lineWidth: 2)
                                                .background(Color("Background2").cornerRadius(50))
                                        )
                                .foregroundColor(Color.black.opacity(0.3))
                            Text("4.8")
                            Text("рейтинг")
                        }
                        VStack {
                           Image(systemName: "book")
                                .font(.system(size: 20,weight: .bold))
                                .foregroundColor(Color("Background8"))
                                .frame(width: 48,height: 48)
                                .background(
                                            RoundedRectangle(cornerRadius: 50)
                                                .stroke(lineWidth: 2)
                                                .background(Color("Background2").cornerRadius(50))
                                        )
                                .foregroundColor(Color.black.opacity(0.3))
                            Text("479")
                            Text("страниц")
                        }
                        VStack {
                           Image(systemName: "person")
                                .font(.system(size: 20,weight: .bold))
                                .foregroundColor(Color("Background8"))
                                .frame(width: 48,height: 48)
                                .background(
                                            RoundedRectangle(cornerRadius: 50)
                                                .stroke(lineWidth: 2)
                                                .background(Color("Background2").cornerRadius(50))
                                        )
                                .foregroundColor(Color.black.opacity(0.3))
                            Text("2 500 чел")
                            Text("прочитали")
                        }
                    }.padding(.top)
                    VStack(alignment: .leading) {
                        Text("О книге")
                            .font(.system(size: 18,weight: .regular))
                        HStack {
                            Text("Искусство")
                                .frame(width: 111, height: 40)
                                .background(Color(red: 1.03, green: 0.829, blue: 0.788))
                                .cornerRadius(10)
                                .foregroundColor(Color(red: 0.604, green: 0.114, blue: -0.005))
                            Text("Кино")
                                .frame(width: 111, height: 40)
                                .background(Color(red: 1.03, green: 0.829, blue: 0.788))
                                .cornerRadius(10)
                                .foregroundColor(Color(red: 0.604, green: 0.114, blue: -0.005))
                            
                        }.padding(.vertical)
                        VStack {
                            
                            Text("Самый милый котобус на свете, чудесная рефлексирующая ведьмочка Кики, лесные духи, обманчивый уют и тревожная красота Замка - все это волшебная вселенная, созданная маэстро анимации Хаяо Миядзаки.Миллионы поклонников по всему миру, множество премий, абсолютное признание гения - у него есть абсолютно всё. Книга Сьюзан Найпир приоткр…"); if  TextMore  {
                                Text("Самый милый котобус на свете, чудесная рефлексирующая ведьмочка Кики, лесные духи, обманчивый уют и тревожная красота Замка - все это волшебная вселенная, созданная маэстро анимации Хаяо Миядзаки.Миллионы поклонников по всему миру, множество премий, абсолютное признание гения - у него есть абсолютно всё. Книга Сьюзан Найпир приоткСамый милый котобус на свете, чудесная рефлексирующая ведьмочка Кики, лесные духи, обманчивый уют и тревожная красота Замка - все это волшебная вселенная, созданная маэстро анимации Хаяо Миядзаки.Миллионы поклонников по всему миру, множество премий, абсолютное признание гения - у него есть абсолютно всё. Книга Сьюзан Найпир приоткр…")
                            }
                        }
                        HStack{
                            Spacer()
                            Button(action: {
                                self.TextMore.toggle()
                            }, label: {
                                Text(TextMore ? "Lass " : "Читать полностью" )
                                    .foregroundColor(Color(red: 0.604, green: 0.114, blue: -0.005))
                            })
                          
                        }
                        HStack{
                            Text("Издательство")
                            Spacer()
                        }
                        HStack{
                            Text("Бомбора, 2019 г.")
                                .foregroundColor(Color(red: 0.604, green: 0.114, blue: -0.005))
                            Spacer()
                        }
                        
                    }.padding(.horizontal,30)
                    .padding(.top)
                    DolodingBook(NameBook: "Похожие книги", NamberBook: "8 книг")
                    Disover()
                    DolodingBook(NameBook: "Книги о Японии", NamberBook: "7 книг")
                    MyBook()
                        .padding(.top,22)
                    Button(action: {
                        createAccunt.toggle()
                        print("Open View Reading")
                    }, label: {
                        HStack {
                            Image(systemName: "book")
                            Text("Читать")
                        }
                        .frame(width: 343, height: 48)
                        .background(Color(red: 0.604, green: 0.114, blue: -0.005))
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        .padding(.top,44)
                    })
                    .fullScreenCover(isPresented: $createAccunt){
                        ReadingBookView()
                    }
                }
                
            }
            .navigationBarItems(trailing: VStack {
                Button(action: {
                    presentSheet = true
                }, label: {
                    Image(systemName: "ellipsis")

                })
                .sheet(isPresented: $presentSheet) {
                    ListMorInBookSheet()
                    .presentationDetents([.medium])

                }
            })
        }
    }
}

struct DiteksBookView_Previews: PreviewProvider {
    static var previews: some View {
        DiteksBookView()
    }
}



struct Disover: View {
    var body: some View {
        VStack {
            HStack{
                Text("Отзывы")
                Spacer()
                Text("Все")
                    .foregroundColor(Color(red: 0.604, green: 0.114, blue: -0.005))
            }.padding()
            HStack(alignment: .top,spacing: 10) {
                Circle()
                    .frame(width: 42,height: 60)
                VStack(alignment: .leading,spacing: 0) {
                    Text("Иван Быков")
                    HStack {
                        ForEach(0 ..< 5) { item in
                            Image(systemName: "star.fill")
                        }
                        .font(.system(size: 13))
                        .foregroundColor(Color.orange)
                        Spacer()
                        Text("25.08.22")
                        
                    }
                    Text("Книга очень понравилась. Вдумчивый и глубокий анализ творчества Хаяо Миядзаки. Скурпулёзный разбор каждой его анимационной картины от самой его первой режиссёрской работы до «Ветер крепчает». И из этого разбора…")
                    HStack {
                        Spacer()
                        Text("Читать полностью")
                            .foregroundColor(Color(red: 0.604, green: 0.114, blue: -0.005))
                    }
                }
                Spacer()

            }
        }.padding(.horizontal)
    }
}

struct MyBook: View {
    var body: some View {
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("Книги по современной культуре")
                            .font(.system(size: 18,weight: .bold))
                            .frame(width: 239)
                            .foregroundColor(Color("Background6"))
                        HStack {
                            Circle()
                                .frame(width: 40,height: 30)
                                .foregroundColor(Color.black)
                            Text("Ольга Кузнецова")
                        }
                        .foregroundColor(Color("Background6"))
                    }
                    Spacer()
                   Image(systemName: "ellipsis")
                        .font(.system(size: 22))
                        .foregroundColor(Color("Background6"))
                }.padding(.horizontal)
                Image("Card")
                    .cornerRadius(10)
                HStack(spacing: 12) {
                    Text("5 книг")
                    Text("публичная")
                    Spacer()
                }.padding(.leading,40)
                    .foregroundColor(Color("Background6"))

                
            }
                .frame(width: 343,height: 236)
                .background(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(lineWidth: 2)
                                .background(Color("Background7").cornerRadius(15))
                        )
                .foregroundColor(Color.gray.opacity(0.3))
        }
    
    }


struct ListMorInBookSheet:View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("Background5")
                     .ignoresSafeArea(.all)
                VStack {
                    HStack {
                        Button(action: {}, label: {
                            VStack(spacing: 12) {
                                Image(systemName: "bookmark")
                                Text("Хочу прочитать")
                            }
                            .frame(width: 110,height: 106)
                                .background(Color(red: 1.03, green: 0.829, blue: 0.788))
                                .cornerRadius(15)
                                .multilineTextAlignment(.center)
                                .padding(.leading)
                        })

                        VStack(spacing: 12) {
                            Image(systemName: "book")
                            Text("Читаю")
                        }.frame(width: 110,height: 106)
                            .cornerRadius(15)
                            .multilineTextAlignment(.center)
                        VStack(spacing: 12) {
                            Image(systemName: "checkmark.circle")
                            Text("Прочитано")
                        }.frame(width: 110,height: 106)
                            .cornerRadius(15)
                            .multilineTextAlignment(.center)
                        
                    }.padding(.all)
                        .frame(width: 343,height: 118)
                        .background(Color.white)
                        .cornerRadius(15)
                        .font(.system(size: 16,weight: .regular))
                        .padding(.horizontal)
                    VStack(alignment: .leading,spacing: 12) {
                        HStack  {
                            Image(systemName: "plus.circle")
                            Text("Добавить книгу на полку")
                        }
                        Divider()
                        HStack  {
                            Image(systemName: "square.and.arrow.up")
                            Text("Поделиться")
                        }
                        Divider()
                        HStack {
                            Image(systemName: "square.and.arrow.down")
                            Text("Скачать книгу")
                        }
                    }.padding(.all)
                    
                    .frame(width: 343,height: 144)
                        .background(Color.white)
                        .cornerRadius(15)
                    Button(action: {
                        print("Save The Book")
                    }, label: {
                        HStack {
                            Text("Сохранить")
                        }.padding(.all)
                            .frame(width: 343, height: 46)
                            .background(Color(red: 0.604, green: 0.114, blue: -0.005))
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                            .padding(.top)
                    })
                   
                }
                .foregroundColor(Color("Background6"))
            }
            .navigationBarTitle("Управление книгой",displayMode: .inline)
            .navigationBarItems(leading: VStack {
                Image(systemName: "chevron.backward")
            })
        }
    }
}




struct BookLiteMo:View {
    var body: some View {
        HStack(alignment: .top,spacing: 12) {
            ZStack(alignment: .bottomTrailing) {
                Rectangle()
                    .foregroundColor(Color.red)
                HStack(alignment: .center,spacing: 2) {
                    Image(systemName: "headphones")
                    Image(systemName: "book")
                }.padding(.all)
                    .font(.system(size: 10))
                    .background(Color.white)
                    .frame(width: 38,height: 16)
                    .cornerRadius(7)
                    .foregroundColor(Color.black)
                    .padding([.bottom, .trailing], 8.0)
            }
            .frame(width: 100,height: 144)
            .cornerRadius(5)
            VStack(alignment: .leading,spacing: 5) {
                Text("Sapiens: Краткая история человечества")
                Text("Юваль Ной Харари")
                HStack {
                    Image(systemName: "star.fill")
                     
                    Text("4.7")
                }
                .foregroundColor(Color.orange)
                    .font(.system(size: 13))
            }
            Image(systemName: "ellipsis")
                .rotationEffect(.degrees(-90))
                .padding(.top,10)
            
        }
    }
}




struct TheBookDolding: View {
    var body: some View{
        HStack(alignment: .center) {
            VStack(alignment: .leading) {
                NavigationLink(destination: {
                    DiteksBookView()
                }, label: {
                    ZStack(alignment: .bottomTrailing) {
                        Rectangle()
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
                Text("Волшебные миры Мияд...")
                    .font(.system(size: 16,weight: .semibold))
                    .frame(width: 104,height: 40)
                Text("Сюзан Нейпир")
                    .font(.system(size: 12,weight: .light))
                  
            }
        }.foregroundColor(Color("Background6"))
    }
}



