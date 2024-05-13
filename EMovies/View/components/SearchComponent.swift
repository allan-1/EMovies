//
//  SearchComponent.swift
//  EMovies
//
//  Created by Allan on 5/8/24.
//

import SwiftUI

struct SearchComponent: View {
    
    @StateObject var homeData = HomeViewModel()
    
    let screenPlaceholder: String
    
    var body: some View {
        HStack(spacing: 5){
            Image(systemName: "magnifyingglass")
            TextField("Search for \(screenPlaceholder)", text: $homeData.searchQuery)
            Button(action: search, label: {
                Text("Search")
            }).buttonStyle(.borderedProminent)
        }.padding(.vertical, 10).padding(.horizontal).background(Color.white)
            .shadow(color: Color.black.opacity(0.06), radius: 5, x:5, y: 5)
            .shadow(color: Color.black.opacity(0.06), radius: 5, x: -5, y: -5)
    }
}

func search(){}

#Preview {
    SearchComponent(screenPlaceholder: "Movies or Series")
}
