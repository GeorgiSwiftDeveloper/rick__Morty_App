//
//  Location.swift
//  rickMorty
//
//  Created by Georgi Malkhasyan on 9/8/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import Foundation

struct Location: Codable {
    var idl: Int
    var namel: String
    var type: String
    var dimension: String
    var residents: [String]
    var url: String
    var created: String

    enum CodingKeys: String, CodingKey {
        case idl = "id"
        case namel = "name"
        case type
        case dimension
        case residents
        case url
        case created
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        idl = try container.decode(Int.self, forKey: .idl)
        namel = try container.decode(String.self, forKey: .namel)
        type = try container.decode(String.self, forKey: .type)
        dimension = try container.decode(String.self, forKey: .dimension)
        residents = try container.decode([String].self, forKey: .residents)
        url = try container.decode(String.self, forKey: .url)
        created = try container.decode(String.self, forKey: .created)
    }
}
