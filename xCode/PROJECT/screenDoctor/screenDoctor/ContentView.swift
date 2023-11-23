//
//  ContentView.swift
//  screenDoctor
//
//  Created by Илья Санников on 23.11.2023.
//

let nameClient = "James"

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //        MARK: Главый контейнер
                
                List{
                    VStack(alignment:.center) {
                                
//                      MARK: Приветствие
                        Welcome()
                                
        //              MARK: Принимающий врач
                        ReceivingDoctor()
                                
        //              MARK: Поисковая строка
                        SearchString()
                                
        //              MARK: Меню выбора услуг
                        ServicesMenu()
                                                                    
        //              MARK: Выбор доктора
                        SelectDoctor()
                                    
                    }.padding(0)
                        .frame(alignment: .center)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 20)
                        .background(.white)
                    
        //              MARK: Навигация
                        Section(){Navigation()}
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
