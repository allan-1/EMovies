//
//  MovieItem.swift
//  EMovies
//
//  Created by Allan on 5/13/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct MovieItem: View {
    var body: some View {
        VStack{
            WebImage(url: URL(string: "https://image.tmdb.org/t/p/original//lLh39Th5plbrQgbQ4zyIULsd0Pp.jpg")) { image in
                image.resizable()
            } placeholder: {
                Rectangle().foregroundColor(.gray)
            }
            MovieItemText()
        }
    }
}

#Preview {
    MovieItem()
}
