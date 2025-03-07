//
//  Movie.swift
//  Netflix Clone
//
//  Created by Eduardo Jordan on 6/3/25.
//

import Foundation

struct TrendingTitlesresponse: Codable {
    let results: [Title]
}

struct Title: Codable {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}
