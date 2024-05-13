//
//  MoviesView.swift
//  EMovies
//
//  Created by Allan on 5/8/24.
//

import SwiftUI

struct MoviesView: View {
    var body: some View {
        ScrollView{
            VStack{
                SearchComponent(screenPlaceholder: "Movies")
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading).padding()
        }

    }
}

#Preview {
    MoviesView()
}