//
//  TvView.swift
//  EMovies
//
//  Created by Allan on 5/8/24.
//

import SwiftUI

struct TvView: View {
    var body: some View {
        ScrollView{
            VStack{
                SearchComponent(screenPlaceholder: "TV Series")
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading).padding()
        }
    }
}

#Preview {
    TvView()
}
