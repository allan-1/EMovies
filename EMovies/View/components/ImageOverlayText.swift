//
//  ImageOverlayText.swift
//  EMovies
//
//  Created by Allan on 5/13/24.
//

import SwiftUI

struct ImageOverlayText: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                HStack(spacing: 5){
                    Text("2024")
                    Image(systemName: "moonphase.full.moon.inverse").resizable()
                        .frame(width: 8.0, height: 8.0)
                    Image(systemName: "movieclapper.fill")
                    Text("Movie")
                }
                Text("The Most interesting movie").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(.bold)
            }
        }
    }
}

#Preview {
    ImageOverlayText()
}
