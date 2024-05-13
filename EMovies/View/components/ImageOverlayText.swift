//
//  ImageOverlayText.swift
//  EMovies
//
//  Created by Allan on 5/13/24.
//

import SwiftUI

struct MovieItemText: View {
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
                Text("The Most interesting movie").font(.title3).fontWeight(.bold)
            }.frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    MovieItemText()
}
