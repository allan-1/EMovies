//
//  GenreText.swift
//  EMovies
//
//  Created by Allan on 5/21/24.
//

import SwiftUI

struct GenreText: View {
    var genre: String
    var body: some View {
        Text(genre).font(.system(size: 16, weight: .bold)).padding(.all, 6).foregroundStyle(.black).background(.white).clipShape(.rect(cornerRadius: 8))
    }
}

//#Preview {
//    GenreText()
//}
