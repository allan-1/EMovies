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
            WebImage(url: URL(string: "https://image.tmdb.org/t/p/original//lLh39Th5plbrQgbQ4zyIULsd0Pp.jpg")) { image in
                image.resizable().frame(width: 180, height: 135, alignment: .leading).clipShape(.rect(cornerRadius: 8))
            } placeholder: {
                Rectangle().foregroundColor(.gray)
            }
            MovieItemText(releaseYear: releaseYear, movieTitle: movieTitle, mediaType: mediaType)
        }
    }
}

//#Preview {
//    MovieItem()
//}
