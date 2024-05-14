//
//  MovieItem.swift
//  EMovies
//
//  Created by Allan on 5/13/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct MovieItem: View {
    let releaseYear: String
    let backdropPath: String
    let movieTitle: String
    let mediaType: String
    
    var body: some View {
        VStack(alignment: .leading){
            WebImage(url: URL(string: "https://image.tmdb.org/t/p/original\(backdropPath)")) { image in
                image.resizable().frame(width: 180, height: 135, alignment: .leading).clipShape(.rect(cornerRadius: 8))
            } placeholder: {
                Image(systemName: "play.rectangle").resizable().frame(width: 180, height: 135).foregroundColor(.pink)
            }
            MovieItemText(releaseYear: releaseYear, movieTitle: movieTitle, mediaType: mediaType)
        }
    }
}

//#Preview {
//    MovieItem()
//}
