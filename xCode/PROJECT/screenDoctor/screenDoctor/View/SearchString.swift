//
//  SearchString.swift
//  screenDoctor
//
//  Created by Илья Санников on 23.11.2023.
//

import SwiftUI

struct SearchString: View {
    var body: some View {
        
        HStack(alignment: .center, spacing: 12){
            
            Image("search").frame(width: 24, height: 24)
            
            Text("Search doctor or health issue")
                .font(Font.custom("Poppins",size:15))
                .foregroundColor(Color(red:0.53, green: 0.59, blue: 0.7))
            
        }.padding(16)
            .frame(width: 327, alignment: .leading)
            .background(Color(red:0.98, green:0.98, blue:0.98))
            .cornerRadius(12)
    }
}

struct SearchString_Previews: PreviewProvider {
    static var previews: some View {
        SearchString()
    }
}
