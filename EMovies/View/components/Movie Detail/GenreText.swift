//
//  GenreText.swift
//  EMovies
//
//  Created by Allan on 5/21/24.
//

import SwiftUI

struct GenreText: View {
    var body: some View {
        Text("Action").font(.system(size: 16, weight: .bold)).padding(.all, 6).foregroundStyle(.white).background(.black).clipShape(.rect(cornerRadius: 8))
    }
}

#Preview {
    GenreText()
}
