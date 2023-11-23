//
//  Navigation.swift
//  screenDoctor
//
//  Created by Илья Санников on 23.11.2023.
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        
        HStack(alignment: .center) {
            
            HStack(alignment: .center, spacing: 8) {
                Image("home")
                .frame(width: 24, height: 24)
                
                Text("Home")
                  .font(
                    Font.custom("Nunito", size: 14)
                      .weight(.bold)
                  )
                  .foregroundColor(Color(red: 0.39, green: 0.71, blue: 1))
            }
            .padding(12)
            .frame(width: 95)
            .background(Color(red: 0.39, green: 0.71, blue: 1).opacity(0.1))
            .cornerRadius(12)
            
        HStack(alignment: .center) {
            Image("calendar2")
        }
        .padding(12).frame(maxWidth: .infinity, alignment: .center)
        
        
        HStack(alignment: .center) {
            Image("message")
        }
        .padding(12).frame(maxWidth: .infinity, alignment: .center)
        
        HStack(alignment: .center) {
            Image("profile")
        }
        .padding(12).frame(maxWidth: .infinity, alignment: .center)
        
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 16)
        .frame(maxWidth: .infinity, alignment: .center)
        .background(.white)

    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
