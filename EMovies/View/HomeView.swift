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
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading).padding()
        }
    }
}

#Preview {
    HomeView()
}
