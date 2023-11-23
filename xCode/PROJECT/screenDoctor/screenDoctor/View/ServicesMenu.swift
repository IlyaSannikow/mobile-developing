//
//  ServicesMenu.swift
//  screenDoctor
//
//  Created by Илья Санников on 23.11.2023.
//

import SwiftUI

struct ServicesMenu: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 24) {
            HStack(alignment: .top, spacing: 13) {
                
                VStack(alignment: .center, spacing: 8){
                    HStack(alignment: .top, spacing: 10){
                        Image("virus")
                    }.padding(24)
                        .background(Color(red:0.98,green:0.98,blue:0.98))
                        .cornerRadius(100)
                    
                    Text("Covid 19")
                      .font(Font.custom("Poppins", size: 15))
                      .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                }
                
                VStack(alignment: .center, spacing: 8){
                    HStack(alignment: .top, spacing: 10){
                        Image("doctorProfile")
                    }.padding(24)
                        .background(Color(red:0.98,green:0.98,blue:0.98))
                        .cornerRadius(100)
                    
                    Text("Doctor")
                      .font(Font.custom("Poppins", size: 15))
                      .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                }
                
                VStack(alignment: .center, spacing: 8){
                    HStack(alignment: .top, spacing: 10){
                        Image("medicine")
                    }.padding(24)
                        .background(Color(red:0.98,green:0.98,blue:0.98))
                        .cornerRadius(100)
                    
                    Text("Medicine")
                      .font(Font.custom("Poppins", size: 15))
                      .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                }
                
                VStack(alignment: .center, spacing: 8){
                    HStack(alignment: .top, spacing: 10){
                        Image("hospital")
                    }.padding(24)
                        .background(Color(red:0.98,green:0.98,blue:0.98))
                        .cornerRadius(100)
                    
                    Text("Hospital")
                      .font(Font.custom("Poppins", size: 15))
                      .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                }
            }
            
        }
    }
}

struct ServicesMenu_Previews: PreviewProvider {
    static var previews: some View {
        ServicesMenu()
    }
}
