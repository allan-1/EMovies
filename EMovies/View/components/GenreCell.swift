//
//  GenreCell.swift
//  EMovies
//
//  Created by Allan on 5/14/24.
//

import SwiftUI

struct GenreCell: View {
    
    let genre: String
    
    var body: some View {
        ZStack{
            Rectangle().frame(width: 170, height: 170).foregroundStyle(.brown).clipShape(.rect(cornerRadius: 10))
            Text(genre).foregroundStyle(.white).fontWeight(.bold).font(.title2)
        }
    }
}

//#Preview {
//    GenreCell()
//}
