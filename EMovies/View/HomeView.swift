//
//  HomeView.swift
//  EMovies
//
//  Created by Allan on 5/8/24.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeViewModel = HomeViewModel()
    
    var body: some View {
        ScrollView{
            VStack{
                SearchComponent(screenPlaceholder: "Movies or Series")
                TitleText(title: "Trending", mtype: "Movie").padding(.top, 26)
                ScrollView(.horizontal, showsIndicators: false){
                    if let trendingresults = homeViewModel.fetchedTrending{
                        if trendingresults.results.isEmpty{
                            Text("Loading")
                        }else{
                            HStack{
                                ForEach(homeViewModel.fetchedTrending!.results, id: \.id){
                                    result in OverlayContentView(releaseYear: result.firstAirDate ?? result.releaseDate ?? "", backdropPath: result.backdropPath,movieTitle: result.originalTitle ?? result.originalName ?? result.name ?? "", mediaType: result.mediaType.rawValue )
                                }
                            }
                        }
                    }else{
                        ProgressView()
                    }
                    
                }
                TitleText(title: "Popular", mtype: "Movie").padding(.top, 20)
//                LazyVGrid(columns: [GridItem(.adaptive(minimum: 170))]) {
//                    ForEach(homeViewModel.fetchedPopular!.results, id: \.id) { result in
//                        MovieItem()
//                    }
//                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading).padding(.horizontal, 6).onAppear{
            homeViewModel.getTrending()
        }
    }
}

#Preview {
    HomeView()
}
