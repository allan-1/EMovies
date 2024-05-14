//
//  ImageOverlayText.swift
//  EMovies
//
//  Created by Allan on 5/13/24.
//

import SwiftUI

struct MovieItemText: View {
    let releaseYear: String
    let movieTitle: String
    let mediaType: String
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                HStack(spacing: 5){
                    Text(releaseYear.prefix(4)).foregroundStyle(.white)
                    Image(systemName: "moonphase.full.moon.inverse").resizable()
                        .frame(width: 8.0, height: 8.0).foregroundStyle(.white)
                    Image(systemName: "movieclapper.fill").foregroundStyle(.white)
                    Text(mediaType).foregroundStyle(.white)
                }
                Text(movieTitle).font(.title3).fontWeight(.bold).foregroundStyle(.white)
            }.frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

//#Preview {
//    MovieItemText()
//}
