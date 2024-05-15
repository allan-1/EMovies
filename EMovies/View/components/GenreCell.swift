//
//  GenreCell.swift
//  EMovies
//
//  Created by Allan on 5/14/24.
//

import SwiftUI

struct GenreCell: View {
    var body: some View {
        ZStack{
            Rectangle().frame(width: 130, height: 130).foregroundStyle(.brown).clipShape(.rect(cornerRadius: 10))
            Text("Allan").foregroundStyle(.white).fontWeight(.bold).font(.title2)
        }
    }
}

#Preview {
    GenreCell()
}
