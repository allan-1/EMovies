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
    
    //MARK: - Get Trending Movies
    func getTrending(){
        let urlString = "https://api.themoviedb.org/3/trending/all/day?language=en-US"
        
        guard let apiUrl = URL(string: urlString) else{
            print("invalid url")
            return
        }
        
        var request = URLRequest(url: apiUrl)
        request.httpMethod = "GET"
        request.setValue("Bearer \(bearerToken)", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        
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
        let urlString = "https://api.themoviedb.org/3/movie/popular?language=en-US&page=1"
        
        guard let apiUrl = URL(string: urlString) else{
            print("Invalid url")
            return
        }
        
        var request = URLRequest(url: apiUrl)
        request.httpMethod = "GET"
        request.setValue("Bearer \(bearerToken)", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        
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
                    print(popular)
                    DispatchQueue.main.async {
                        self.fetchedPopular = popular
                    }
                }catch{
                    print("Error decoding data: \(error)")
                }
        }.resume()
    }
}
