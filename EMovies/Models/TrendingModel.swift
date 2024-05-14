//
//  TrendingModel.swift
//  EMovies
//
//  Created by Allan on 5/13/24.
//

import Foundation

struct TrendingModel: Codable{
    let page: Int
    let results: [Result]
    let totalPages, totalResults: Int
}

struct Result: Codable{
    let backdropPath: String
    let id: Int
    let originalName: String?
    let originalTitle: String?
    let overview: String
    let posterPath: String
    let mediaType: MediaType
    let adult: Bool
    let name: String
    let originalLanguage: OriginalLanguage
    let genreId: [Int]
    let popularity: Double
    let releaseDate: String?
    let firstAirDate: String?
    let video: Bool?
    let voteAverage: Double
    let voteCount: Int
    let originCountry: [String]?
}

enum MediaType: String, Codable {
    case movie = "movie"
    case tv = "tv"
}

enum OriginalLanguage: String, Codable {
    case de = "de"
    case en = "en"
    case ja = "ja"
}
