//
//  MovieMetrics.swift
//  EMovies
//
//  Created by Allan on 5/21/24.
//

import SwiftUI

struct MovieMetrics: View {
    let title: String
    let metric: String
    var body: some View {
        VStack{
            Text(title).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Text(metric).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    MovieMetrics(title: "Length", metric: "116")
}
