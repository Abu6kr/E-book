//
//  ProfileEmptyState.swift
//  E-book
//
//  Created by Аbubakr Futtaini on 14.12.2022.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    @State private var selctionImage:PhotosPickerItem?
    @State private var selectedPhotoData: Data?
    @State private var Loding = false
    @State var isAnmsin = true
    
     var NmeTheUser = "Abo"
    var body: some View {
        NavigationView {
            ZStack {
                Color("Background5")
                     .ignoresSafeArea(.all)
                VStack {
                    VStack(alignment: .center,spacing: 8) {
                        VStack {
                            ZStack {
                                Image("Union")
                                    .frame(width: 72,height: 72)
                                    .background(
                                        RoundedRectangle(cornerRadius: 70)
                                            .stroke(lineWidth: 2)
                                            .background(Color(red: 0.994, green: 0.96, blue: 0.952).cornerRadius(70)))
                                .foregroundColor(Color.black.opacity(0.5))
                            if let selectedPhotoData,
                               let image = UIImage(data: selectedPhotoData) {
                               
                                  Image(uiImage: image)
                                      .resizable()
                                      .frame(width: 72,height: 72)
                                      .cornerRadius(70)

                            }
                              }
                            PhotosPicker(selection: $selctionImage, matching: .any(of: [.images, .not(.livePhotos)])){
                                Text("Загрузить фото")
                                    .foregroundColor(Color(red: 0.604, green: 0.114, blue: -0.005))
                            }
                            .onChange(of: selctionImage) { newItem in
                                Task {
                                    if let data = try? await newItem?.loadTransferable(type: Data.self) {
                                        selectedPhotoData = data
                                    }
                                }
                            }
                        }
                    }
                    VStack(alignment: .center,spacing: 2) {
                        Text("Привет, \(NmeTheUser)!")
                            .font(.system(size: 16,weight: .semibold))
                        Text("Ниже будет твоя статистика чтения 🥰")
                    }.padding(.top,16)
                    HStack(spacing: 20) {
                        VStack {
                           Image(systemName: "book")
                                .font(.system(size: 20,weight: .bold))
                                .foregroundColor(Color(red: 0.604, green: 0.114, blue: -0.005))
                                .frame(width: 48,height: 48)
                                .background(
                                            RoundedRectangle(cornerRadius: 50)
                                                .stroke(lineWidth: 2)
                                                .background(Color("Background7").cornerRadius(50))
                                        )
                                .foregroundColor(Color.black.opacity(0.3))
                            Text("6 книг")
                            Text("прочитано")
                                .font(.system(size: 12))
                        }
                        VStack {
                           Image(systemName: "clock")
                                .font(.system(size: 20,weight: .bold))
                                .foregroundColor(Color(red: 0.604, green: 0.114, blue: -0.005))
                                .frame(width: 48,height: 48)
                                .background(
                                            RoundedRectangle(cornerRadius: 50)
                                                .stroke(lineWidth: 2)
                                                .background(Color("Background7").cornerRadius(50))
                                        )
                                .foregroundColor(Color.black.opacity(0.3))
                            Text("43 часа")
                            Text("время за чтением")
                                .font(.system(size: 12))
                        }
                        VStack {
                           Image(systemName: "lightbulb.fill")
                                .font(.system(size: 20,weight: .bold))
                                .foregroundColor(Color(red: 0.604, green: 0.114, blue: -0.005))
                                .frame(width: 48,height: 48)
                                .background(
                                            RoundedRectangle(cornerRadius: 50)
                                                .stroke(lineWidth: 2)
                                                .background(Color("Background7").cornerRadius(50))
                                        )
                                .foregroundColor(Color.black.opacity(0.3))
                            Text("80 стр/ч")
                            Text("скорость чтения")
                                .font(.system(size: 12))
                        }
                      
                    }.padding(.top)
                        .redacted(reason: isAnmsin ?  .placeholder : .init())
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                isAnmsin = false
                            }
                        }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        NavigationLink(destination: {}, label: {
                            HStack {
                                Image(systemName: "bell")
                                Text("Уведомления")
                                    .font(.system(size: 16))
                            }
                        })
                      
                        Divider()
                        HStack {
                            Image(systemName: "creditcard")
                            Text("Подписка")
                                .font(.system(size: 16))
                        }
                        Divider()
                        HStack {
                            Image(systemName: "gearshape")
                            Text("Настройки")
                                .font(.system(size: 16))
                        }
                        Divider()
                        HStack {
                            Image(systemName: "star")
                            Text("Поддержка")
                                .font(.system(size: 16))
                        }

                    }.padding(.all)
                        .frame(width: 343, height: 192)
                        .background(Color("Background7"))
                        .cornerRadius(10)
                        .padding(.top,26)
                    Button(action: {
                        print("Will be Out The User")
                    }, label: {
                         HStack(alignment: .center) {
                            Text("Выйти")
                                .font(.system(size: 16,weight: .semibold))
                                .foregroundColor(Color.red)
                        }.padding(.all)
                            .frame(width: 343, height: 48)
                            .background(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2).background(Color("Background7").cornerRadius(10)))
                            .foregroundColor(Color.black.opacity(0.3))
                            .padding(.top,16)
                    })
                   
                }
                .foregroundColor(Color("Background6"))
            }
        }
    }
}

struct ProfileEmptyState_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
