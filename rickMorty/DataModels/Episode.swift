//
//  Episode.swift
//  rickMorty
//
//  Created by Georgi Malkhasyan on 9/8/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//


import Foundation

//MARK: Episode data structure
struct Episode: Codable {
    var ide: Int
    var namee: String
    var airDate: String
    var episodeCode: String
    var characters: [String]
    var url: String
    var created: String
}
