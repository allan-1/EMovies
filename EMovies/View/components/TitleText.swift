//
//  TitleText.swift
//  EMovies
//
//  Created by Allan on 5/13/24.
//

import SwiftUI

struct TitleText: View {
    
    let title: String
    let mtype: String
    
    var body: some View {
        HStack(spacing: 12){
            Text(title).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text(mtype).padding(.all, 8).border(.black).fontWeight(.medium)
        }
        
    }
}

#Preview {
    TitleText(title: "Recommended", mtype: "TV Series")
}
