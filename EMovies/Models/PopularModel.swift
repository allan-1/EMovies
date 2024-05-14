//
//  PopularModel.swift
//  EMovies
//
//  Created by Allan on 5/13/24.
//

import Foundation

struct Popular: Codable {
    let page: Int
    let results: [Results]
    let totalPages, totalResults: Int
}

struct Results: Codable {
    let adult: Bool
    let gender, id: Int
    let knownForDepartment: String?
    let name, originalName: String
    let popularity: Double
    let profilePath: String?
    let knownFor: [KnownFor]
}

struct KnownFor: Codable {
    let backdropPath: String?
    let id: Int
    let originalTitle: String?
    let overview: String
    let posterPath: String?
    let mediaType: MediaType
    let adult: Bool
    let title: String?
    let originalLanguage: String
    let genreIDS: [Int]
    let popularity: Double
    let releaseDate: String?
    let video: Bool?
    let voteAverage: Double
    let voteCount: Int
    let originalName, name, firstAirDate: String?
    let originCountry: [String]?
}
