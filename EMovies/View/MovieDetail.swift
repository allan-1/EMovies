//
//  MovieDetail.swift
//  EMovies
//
//  Created by Allan on 5/21/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct MovieDetail: View {
    
    @StateObject var homeViewModel = HomeViewModel()
    var movieId: Int
    var movieTitle: String
    
    var body: some View {
        ScrollView{
            VStack{
                SearchComponent(screenPlaceholder: "TV Series").padding(.bottom, 12)
                if let movieDetails = homeViewModel.fetchedMovieDetails{
                    WebImage(url: URL(string: "https://image.tmdb.org/t/p/original\(movieDetails.posterPath)")) { image in
                        image.resizable().frame(width: 200, height: 250, alignment: .leading).clipShape(.rect(cornerRadius: 8))
                    } placeholder: {
                        Image(systemName: "play.rectangle").resizable().frame(width: 180, height: 135).foregroundColor(.pink)
                    }
                    Text(movieDetails.title).font(.system(size: 28)).fontWeight(.semibold).multilineTextAlignment(.center)
                    Text(movieDetails.tagline)
                    Text("\(movieDetails.voteAverage / 2)".prefix(3)).font(.system(size: 30, weight: .black))
                    StarsView(rating: movieDetails.voteAverage / 2).frame(width: 70)
                    HStack(spacing: 20){
                        MovieMetrics(title: "Length", metric: "\(movieDetails.runtime) min.")
                        MovieMetrics(title: "Language", metric: "English")
                        MovieMetrics(title: "Year", metric: String(movieDetails.releaseDate.prefix(4)))
                        MovieMetrics(title: "Status", metric: movieDetails.status)
                    }.padding(.top, 4).padding(.bottom, 6)
                    VStack(alignment: .leading, spacing: 5){
                        Text("Genres").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.title3)
                        HStack{
                            ForEach(movieDetails.genres, id: \.id){genre in
                                GenreText(genre: genre.name)
                            }
                            
                        }
                        Text("Synopsis").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.title3).padding(.top, 8)
                        Text(movieDetails.overview)
//                        Text("Cast").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.title3)
//                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 170))]) {
//                            ForEach(homeViewModel.fetchedPopular!.results, id: \.id) { result in CastText()
//                            }
//                        }
                    }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading).padding()
                }
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading).padding()
        }.onAppear{
            homeViewModel.getMovieDetails(movieId: movieId)
        }.navigationTitle(movieTitle)
    }
}

#Preview {
    MovieDetail(movieId: 823464, movieTitle: "Allan")
}
