//
//  YoutubeSearchResponse.swift
//  Netflix Clone
//
//  Created by Eduardo Jordan on 10/3/25.
//

import Foundation

struct YoutubeSearchResponse:Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IDVideoElement
}

struct IDVideoElement: Codable {
    let kind: String
    let videoId: String
}
