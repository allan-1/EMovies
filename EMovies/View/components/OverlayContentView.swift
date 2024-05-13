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
            image.resizable().overlay(MovieItemText().padding(), alignment: .bottomLeading)
        } placeholder: {
            Rectangle().foregroundColor(.gray)
        }
    }
}

#Preview {
    OverlayContentView()
}
