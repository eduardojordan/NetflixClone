//
//  APICaller.swift
//  Netflix Clone
//
//  Created by Eduardo Jordan on 6/3/25.
//

import Foundation

struct Constants {
    static let API_KEY = "bb3cda839e0cf4f922d98d8f8025e07b"
    static let baseURL = "https://api.themoviedb.org"
    static let YouTubeAPI_KEY = "AIzaSyCg4nPVVtHRMJBBrhHFfu0lbBsSOgpywFI"
    static let YoutuveBaseUrl = "https://youtube.googleapis.com/youtube/v3/search?"
}

enum APIError: Error {
    case failedTogetData
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Title], Error >) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let result = try JSONDecoder().decode(TrendingTitlesResponse.self, from: data)
                completion(.success(result.results))
            } catch  {
                completion(.failure(APIError.failedTogetData))
            }
        }
        task.resume()
    }
    
    func getTrendingTvs(completion: @escaping (Result<[Title], Error >) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/tv/day?api_key=\(Constants.API_KEY)") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let result = try JSONDecoder().decode(TrendingTitlesResponse.self, from: data)
                completion(.success(result.results))
            } catch  {
                completion(.failure(APIError.failedTogetData))
            }
        }
        task.resume()
    }
    
    func getUpcomingMovies(completion: @escaping (Result<[Title], Error >) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/movie/upcoming?api_key=\(Constants.API_KEY)&language=en-US&page=1") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let result = try JSONDecoder().decode(TrendingTitlesResponse.self, from: data)
                completion(.success(result.results))
                print(result)
            } catch  {
                completion(.failure(APIError.failedTogetData))
            }
        }
        task.resume()
    }
    
    func getPopular(completion: @escaping (Result<[Title], Error >) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/movie/popular?api_key=\(Constants.API_KEY)&language=en-US&page=1") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let result = try JSONDecoder().decode(TrendingTitlesResponse.self, from: data)
                completion(.success(result.results))
                print(result)
            } catch  {
                completion(.failure(APIError.failedTogetData))
            }
        }
        task.resume()
    }
    
    func getTopRate(completion: @escaping (Result<[Title], Error >) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/movie/top_rated?api_key=\(Constants.API_KEY)&language=en-US&page=1") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let result = try JSONDecoder().decode(TrendingTitlesResponse.self, from: data)
                completion(.success(result.results))
                print(result)
            } catch  {
                completion(.failure(APIError.failedTogetData))
            }
        }
        task.resume()
    }
    
    
    func getDiscoverMovie(completion: @escaping (Result<[Title], Error >) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/discover/movie?api_key=\(Constants.API_KEY)&language=en-US&sort_by=popularity.desc&include_adult=flase&include_video=false&page1&with_watch_monetization_types=flatrate") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let result = try JSONDecoder().decode(TrendingTitlesResponse.self, from: data)
                completion(.success(result.results))
                print(result)
            } catch  {
                completion(.failure(APIError.failedTogetData))
            }
        }
        task.resume()
    }
    
    
    func search(with query: String, completion: @escaping (Result<[Title], Error >) -> Void) {
        guard let query = query.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else {return}
        guard let url = URL(string: "\(Constants.baseURL)/3/search/movie?api_key=\(Constants.API_KEY)&query=\(query)") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let result = try JSONDecoder().decode(TrendingTitlesResponse.self, from: data)
                completion(.success(result.results))
                print(result)
            } catch  {
                completion(.failure(APIError.failedTogetData))
            }
        }
        task.resume()
    }

    func getMovie(with query:String, completion: @escaping (Result<VideoElement, Error >) -> Void) {
        guard let query = query.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else {return}
        guard  let url = URL(string: "\(Constants.YoutuveBaseUrl)q=\(query)&key=\(Constants.YouTubeAPI_KEY)") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let result = try JSONDecoder().decode(YoutubeSearchResponse.self, from: data)
                completion(.success(result.items[0]))
            } catch  {
                completion(.failure(error))
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
}
