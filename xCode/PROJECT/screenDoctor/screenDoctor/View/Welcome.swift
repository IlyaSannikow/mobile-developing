//
//  Welcome.swift
//  screenDoctor
//
//  Created by Илья Санников on 23.11.2023.
//

import SwiftUI

struct Welcome: View {
    var body: some View {
        
        HStack (alignment: .center) {
            VStack (alignment: .leading, spacing: 6){
                Text("Hello").font(.custom("Poppins", size: 16))
                    .foregroundColor(Color(red:0.53, green:0.59, blue:0.73))
                Text("Hi, \(nameClient)")
                    .font(.custom("Poppins", size: 20)
                        .weight(.bold))
                    .foregroundColor(Color(red:0.05, green:0.11, blue:0.2))
            }
            
            Spacer()
            
            Image("helloIcon")
                .frame(width: 56, height: 56)
            
        }.frame(height: 60)
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
