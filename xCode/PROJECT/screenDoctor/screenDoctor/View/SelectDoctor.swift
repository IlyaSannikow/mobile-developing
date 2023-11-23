//
//  SelectDoctor.swift
//  screenDoctor
//
//  Created by Илья Санников on 23.11.2023.
//

import SwiftUI

struct SelectDoctor: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack{
                
                Text("Near Doctor")
                    .font(Font.custom("Poppins", size: 16).weight(.semibold))
                    .foregroundColor(Color(red: 0.05, green: 0.11, blue: 0.2))
            }
            
            VStack(alignment: .leading, spacing: 16) {
                
                VStack(alignment: .center, spacing: 20) {
                    
                    HStack(alignment: .center) {
                        
                        HStack(alignment: .top, spacing: 10) {
                            
                            Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 58.44, height: 73.08)
                              .background(
                                Image("drJoseph")
                                  .resizable()
                                  .aspectRatio(contentMode: .fill)
                                  .frame(width: 58.439998626708984, height: 73.08000183105469)
                                  .clipped()
                              )
                            
                            VStack(alignment: .leading, spacing: 8) {
                                
                                Text("Dr. Joseph Brostito")
                                  .font(
                                    Font.custom("Poppins", size: 16)
                                      .weight(.bold)
                                  )
                                  .foregroundColor(Color(red: 0.05, green: 0.11, blue: 0.2))
                                
                                Text("Dental Specialist")
                                  .font(Font.custom("Poppins", size: 14))
                                  .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                                
                            }
                            
                        }
                        
                      Spacer()
                        
                        HStack(alignment: .center, spacing: 8) {
                            
                            Image("location").frame(width: 16, height: 16)
                            Text("1.2 KM")
                              .font(Font.custom("Poppins", size: 14))
                              .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                            
                        }
                    }.frame(width: 295, alignment: .center)
                    
                    VStack(alignment: .center, spacing: 20) {
                        Image("vector").frame(maxWidth: .infinity, minHeight: 0, maxHeight: 0)
                        .overlay(
                          Rectangle()
                            .stroke(Color(red: 0.96, green: 0.96, blue: 0.96), lineWidth: 1)
                        )
                    }
                    
                    HStack(alignment: .top, spacing: 12) {
                        
                        HStack(alignment: .center, spacing: 6) {
                            Image("clockOrange").frame(width: 20, height: 20).foregroundColor(Color(red: 1, green: 0.69, blue: 0.32))
                            
                            Text("4,8 (120 Reviews)")
                              .font(Font.custom("Poppins", size: 12))
                              .foregroundColor(Color(red: 1, green: 0.69, blue: 0.32))
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack(alignment: .center, spacing: 6) {
                            Image("clockBlue").frame(width: 20, height: 20).foregroundColor(Color(red: 0.28, green: 0.58, blue: 1))
                            
                            Text("Open at 17.00")
                              .font(Font.custom("Poppins", size: 12))
                              .foregroundColor(Color(red: 0.28, green: 0.58, blue: 1))
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                    }.frame(maxWidth: .infinity, alignment: .topLeading)
                    
                }.padding(.horizontal, 16)
                .padding(.vertical, 20)
                .background(.white)
                .cornerRadius(12)
                .shadow(color: Color(red: 0.35, green: 0.46, blue: 0.65).opacity(0.04), radius: 10, x: 2, y: 12)
                
                VStack(alignment: .center, spacing: 20) {
                    
                    HStack(alignment: .center) {
                        
                        HStack(alignment: .top, spacing: 10) {
                            
                            Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 58.44, height: 73.08)
                              .background(
                                Image("drImran")
                                  .resizable()
                                  .aspectRatio(contentMode: .fill)
                                  .frame(width: 58.439998626708984, height: 73.08000183105469)
                                  .clipped()
                              )
                            
                            VStack(alignment: .leading, spacing: 8) {
                                
                                Text("Dr. Imran Syahir")
                                  .font(
                                    Font.custom("Poppins", size: 16)
                                      .weight(.bold)
                                  )
                                  .foregroundColor(Color(red: 0.05, green: 0.11, blue: 0.2))
                                
                                Text("General Doctor")
                                  .font(Font.custom("Poppins", size: 14))
                                  .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                                
                            }
                            
                        }
                        
                      Spacer()
                        
                        HStack(alignment: .center, spacing: 8) {
                            
                            Image("location").frame(width: 16, height: 16)
                            Text("1.2 KM")
                              .font(Font.custom("Poppins", size: 14))
                              .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                            
                        }
                    }.frame(width: 295, alignment: .center)
                    
                    VStack(alignment: .center, spacing: 20) {
                        Image("vector").frame(maxWidth: .infinity, minHeight: 0, maxHeight: 0)
                        .overlay(
                          Rectangle()
                            .stroke(Color(red: 0.96, green: 0.96, blue: 0.96), lineWidth: 1)
                        )
                    }
                    
                    HStack(alignment: .top, spacing: 12) {
                        
                        HStack(alignment: .center, spacing: 6) {
                            Image("clockOrange").frame(width: 20, height: 20).foregroundColor(Color(red: 1, green: 0.69, blue: 0.32))
                            
                            Text("4,8 (120 Reviews)")
                              .font(Font.custom("Poppins", size: 12))
                              .foregroundColor(Color(red: 1, green: 0.69, blue: 0.32))
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack(alignment: .center, spacing: 6) {
                            Image("clockBlue").frame(width: 20, height: 20).foregroundColor(Color(red: 0.28, green: 0.58, blue: 1))
                            
                            Text("Open at 17.00")
                              .font(Font.custom("Poppins", size: 12))
                              .foregroundColor(Color(red: 0.28, green: 0.58, blue: 1))
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        
                    }.frame(maxWidth: .infinity, alignment: .topLeading)
                    
                }.padding(.horizontal, 16)
                .padding(.vertical, 20)
                .background(.white)
                .cornerRadius(12)
                .shadow(color: Color(red: 0.35, green: 0.46, blue: 0.65).opacity(0.04), radius: 10, x: 2, y: 12)
            }
        }.padding(.top, 32).frame(maxWidth: .infinity, alignment: .topLeading)
    }
}

struct SelectDoctor_Previews: PreviewProvider {
    static var previews: some View {
        SelectDoctor()
    }
}
