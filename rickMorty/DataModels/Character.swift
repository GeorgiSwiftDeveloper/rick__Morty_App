//
//  Character.swift
//  rickMorty
//
//  Created by Georgi Malkhasyan on 9/8/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import Foundation


//MARK: Character data structure
struct CharactersList: Decodable{
    var results: [Character]
}

struct Character: Decodable, Equatable{
    let id: Int
    let name: String
    let image: String
    let status: String
    let species: String
    let gender: String
}

