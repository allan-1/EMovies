//
//  MoviesView.swift
//  EMovies
//
//  Created by Allan on 5/8/24.
//

import SwiftUI

struct MoviesView: View {
    
    @StateObject var homeViewModel = HomeViewModel()
    
    var body: some View {
        ScrollView{
            VStack{
                SearchComponent(screenPlaceholder: "Movies")
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading).padding()
            if let fetchedGenres = homeViewModel.fetchedMovieGenre {
                if fetchedGenres.genres.isEmpty{
                    Text("No Genre")
                }else{
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 170))]) {
                        ForEach(fetchedGenres.genres, id: \.id) { result in
                            GenreCell(genre: result.name)
                        }
                    }

                }
            }else{
                ProgressView()
            }
        }.onAppear{
            homeViewModel.getMovieGenre()
        }
    }
}

#Preview {
    MoviesView()
}
