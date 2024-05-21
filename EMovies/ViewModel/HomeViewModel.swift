//
//  HomeViewModel.swift
//  EMovies
//
//  Created by Allan on 5/8/24.
//

import Foundation

class HomeViewModel: ObservableObject{
    
    @Published var searchQuery = ""
    @Published var fetchedTrending: TrendingModel? = nil
    @Published var fetchedPopular: PopularModel? = nil
    @Published var fetchedMovieGenre: GenreModel? = nil
    @Published var fetchedTvGenres: GenreModel? = nil
    @Published var fetchedMovieDetails: MovieDetailsModel? = nil
    
    //MARK: - Api request
    func apiRequest(urlString: String) -> URLRequest{
        let urlString = urlString
        
        let apiUrl = URL(string: urlString)
        
        var request = URLRequest(url: apiUrl!)
        request.httpMethod = "GET"
        request.setValue("Bearer \(bearerToken)", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        
        return request
    }
    
    //MARK: - Get Trending Movies
    func getTrending(){
        let request = apiRequest(urlString: "https://api.themoviedb.org/3/trending/all/day?language=en-US")
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: request){
            (data, response, error) in
            if let error = error {
                print("Error fetching data: \(error.localizedDescription)")
                return
            }
            guard let responseData = data else {
                print("No data received")
                return
            }
            
            do{
                let trending = try JSONDecoder().decode(TrendingModel.self, from: responseData)
                DispatchQueue.main.async {
                    self.fetchedTrending = trending
                }
            }catch{
                print("Error decoding data: \(error)")
            }
        }.resume()
    }
    
    func getPopular(){
        let request = apiRequest(urlString: "https://api.themoviedb.org/3/movie/popular?language=en-US&page=1")
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: request){
            (data, response, error) in
                if let error = error {
                    print("Error fetching data: \(error.localizedDescription)")
                    return
                }
                guard let responseData = data else {
                    print("No data received")
                    return
                }
                
                do{
                    let popular = try JSONDecoder().decode(PopularModel.self, from: responseData)
                    DispatchQueue.main.async {
                        self.fetchedPopular = popular
                    }
                }catch{
                    print("Error decoding data: \(error)")
                }
        }.resume()
    }
    
    func getMovieGenre(){
        
        let request = apiRequest(urlString: "https://api.themoviedb.org/3/genre/movie/list?language=en")
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: request){
            (data, response, error) in
            if let error = error{
                print(error.localizedDescription)
                return
            }
            
            guard let responseData = data else{
                print("No data recieved")
                return
            }
            
            do{
                let movieGenre = try JSONDecoder().decode(GenreModel.self, from: responseData)
                DispatchQueue.main.async {
                    self.fetchedMovieGenre = movieGenre
                }
            }catch{
                print("error: \(error.localizedDescription)")
            }
        }.resume()
    }
    
    func getTvGenre(){
        let request = apiRequest(urlString: "https://api.themoviedb.org/3/genre/tv/list?language=en")
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: request){
            (data, response, error) in
            if let error = error{
                print(error.localizedDescription)
                return
            }
            
            guard let responseData = data else{
                print("No data recieved")
                return
            }
            
            do{
                let tvGenre = try JSONDecoder().decode(GenreModel.self, from: responseData)
                DispatchQueue.main.async {
                    self.fetchedTvGenres = tvGenre
                }
            }catch{
                print("error: \(error.localizedDescription)")
            }
        }.resume()
    }
    
    func getMovieDetails(movieId: Int){
        let request = apiRequest(urlString: "https://api.themoviedb.org/3/movie/\(movieId)?language=en-US")
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: request){
            (data, response, error) in
            if let error = error{
                print("No data recieved")
                return
            }
            
            guard let responseData = data else{
                print("No data recieved")
                return
            }
            do{
                let movieDetails = try JSONDecoder().decode(MovieDetailsModel.self, from: responseData)
                DispatchQueue.main.async {
                    self.fetchedMovieDetails = movieDetails
                }
            }catch{
                print("error: \(error.localizedDescription)")
            }
        }.resume()
    }
}
