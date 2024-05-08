//
//  TabsView.swift
//  EMovies
//
//  Created by Allan on 5/8/24.
//

import SwiftUI

struct TabsView: View {
    init(){
        UITabBar.appearance().backgroundColor = UIColor.darkGray
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
    }
    var body: some View {
        TabView{
            HomeView().tabItem {
                Label("Home", systemImage: "house.fill")
            }
            MoviesView().tabItem {
                Label("Movies", systemImage: "movieclapper.fill")
            }
            TvView().tabItem {
                Label("TV", systemImage: "play.tv")
            }
        }.accentColor(.red)
    }
}

#Preview {
    TabsView()
}
