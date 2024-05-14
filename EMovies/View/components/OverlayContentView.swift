//
//  OverlayContentView.swift
//  EMovies
//
//  Created by Allan on 5/13/24.
//

import SwiftUI

import SDWebImage
import SDWebImageSwiftUI

struct OverlayContentView: View {
    let releaseYear: String
    let backdropPath: String
    let movieTitle: String
    let mediaType: String
    
    var body: some View {
        WebImage(url: URL(string: "https://image.tmdb.org/t/p/original\(backdropPath)")) { image in
            image.resizable().frame(width: 300, height: 170).overlay(MovieItemText(releaseYear: releaseYear, movieTitle: movieTitle, mediaType: mediaType).padding(), alignment: .bottomLeading).clipShape(.rect(cornerRadius: 10))
        } placeholder: {
            Image(systemName: "play.rectangle").resizable().frame(width: 300, height: 170).foregroundColor(.pink)
        }
    }
}

//#Preview {
//    OverlayContentView()
//}
