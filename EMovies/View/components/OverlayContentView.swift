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
    var body: some View {
        WebImage(url: URL(string: "https://image.tmdb.org/t/p/original//lLh39Th5plbrQgbQ4zyIULsd0Pp.jpg")) { image in
            image.resizable().frame(width: 300, height: 170).overlay(MovieItemText().padding(), alignment: .bottomLeading).clipShape(.rect(cornerRadius: 10))
        } placeholder: {
            Rectangle().foregroundColor(.gray)
        }
    }
}

#Preview {
    OverlayContentView()
}
