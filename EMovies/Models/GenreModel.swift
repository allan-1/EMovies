//
//  GenreModel.swift
//  EMovies
//
//  Created by Allan on 5/14/24.
//

import Foundation

struct GenreModel: Codable {
    let genres: [Genre]
}

struct Genre: Codable {
    let id: Int
    let name: String
}
