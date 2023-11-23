//
//  ReceivingDoctor.swift
//  screenDoctor
//
//  Created by Илья Санников on 23.11.2023.
//

import SwiftUI

struct ReceivingDoctor: View {
    var body: some View {
        
        VStack(alignment: .center, spacing: 16){
            
            HStack(){
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 58.44, height: 73.08)
                    .background(
                        Image("drImran")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 53.439998626708984, height: 73.08000183105469)
                            .clipped()
                    )
                
                Spacer()
                
                HStack(alignment:.center){
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text("Dr. Imran Syahir")
                            .font(Font.custom("Poppins", size:16).weight(.bold))
                            .foregroundColor(.white)
                        
                        Text("General Doctor")
                            .font(Font.custom("Poppins",size:14))
                            .foregroundColor(Color(red:0.8,green:0.88,blue:1))
                        
                    }
                    
                    Spacer()
                        
                    Image("arrowRight")
                        .frame(width: 24, height: 24)
                    
                }.frame(maxWidth: .infinity, alignment: .center)
            
            }
            
            VStack(alignment: .center, spacing: 16){
                Image("vector")
                    .frame(maxWidth:.infinity, minHeight: 0, maxHeight: 0)
                    .overlay(
                        Rectangle().stroke(.white.opacity(0.15),lineWidth: 1)
                    )
            }
            
            HStack(alignment: .top, spacing: 12){
                
                HStack(alignment:.center, spacing: 8){
                    Image("calendar")
                        .frame(width: 16, height: 16)
                    
                    Text("Sunday, 12 June")
                        .font(Font.custom("Poppins",size:12))
                        .foregroundColor(.white)
                    
                }
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                
                HStack(alignment:.center, spacing: 8){
                    Image("clock")
                        .frame(width: 16, height: 16)
                    
                    Text("11:00 - 12:00 AM")
                        .font(Font.custom("Poppins",size:12))
                        .foregroundColor(.white)
                    
                }.frame(maxWidth: .infinity, alignment: .topLeading)
                
                
            }.frame(maxWidth: .infinity, alignment: .topLeading)
            
        }.padding(20)
            .frame(width: 327, alignment: .top)
            .background(Color(red:0.28,green:0.58,blue:1))
            .cornerRadius(12)
    }
}

struct ReceivingDoctor_Previews: PreviewProvider {
    static var previews: some View {
        ReceivingDoctor()
    }
}
