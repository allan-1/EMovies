//
//  TvView.swift
//  EMovies
//
//  Created by Allan on 5/8/24.
//

import SwiftUI

struct TvView: View {
    @StateObject var homeViewModel = HomeViewModel()
    
    var body: some View {
        ScrollView{
            VStack{
                SearchComponent(screenPlaceholder: "TV Series")
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading).padding()
            if let fetchedGenres = homeViewModel.fetchedTvGenres {
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
            homeViewModel.getTvGenre()
        }
    }
}

#Preview {
    TvView()
}
