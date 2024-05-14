//
//  HomeView.swift
//  EMovies
//
//  Created by Allan on 5/8/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView{
            VStack{
                SearchComponent(screenPlaceholder: "Movies or Series")
                TitleText(title: "Trending", mtype: "Movie").padding(.top, 26)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(dummyTrending, id: \.id){
                            result in OverlayContentView()
                        }
                    }
                }
                TitleText(title: "Popular", mtype: "Movie").padding(.top, 20)
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 170))]) {
                    ForEach(dummyTrending, id: \.id) { result in
                        MovieItem()
                    }
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading).padding(.horizontal, 6)
    }
}

#Preview {
    HomeView()
}
