//
//  Pred.swift
//  rickMorty
//
//  Created by Georgi Malkhasyan on 9/8/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//


import Foundation

struct PagedInfo<T: Codable>: Codable {
    struct Meta: Codable {
        var count: Int
        var pages: Int
        var next: String
        var prev: String
    }
    
    private enum CodingKeys: String, CodingKey {
        case meta = "info"
        case results
    }
    
    let meta: Meta
    let results: [T]
}
