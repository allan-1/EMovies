//
//  MovieListView.swift
//  EMovies
//
//  Created by Allan on 5/27/24.
//

import SwiftUI

struct MovieListView: View {
    var genreId: Int
    var genreTitle: String
    @StateObject var homeViewModel = HomeViewModel()
    var body: some View {
        ScrollView{
            VStack{
                SearchComponent(screenPlaceholder: "Movies")
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading).padding()
            if let fetchedmovies = homeViewModel.fetchedMoviesByGenre {
                if fetchedmovies.results.isEmpty{
                    Text("No movies")
                }else{
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 170))]) {
                        ForEach(fetchedmovies.results, id: \.id) { result in
                        NavigationLink(destination: MovieDetail(movieId: result.id, movieTitle: result.originalTitle)){
                                MovieItem(releaseYear: result.releaseDate, backdropPath: result.backdropPath ?? result.posterPath, movieTitle: result.originalTitle, mediaType: "movie")
                            }
                        }
                    }

                }
            }else{
                ProgressView()
            }
        }.onAppear(perform: {
            homeViewModel.getMovieListByGenre(genreId: genreId)
        }).navigationTitle(genreTitle)
    }
}

#Preview {
    MovieListView(genreId: 12, genreTitle: "Action")
}
