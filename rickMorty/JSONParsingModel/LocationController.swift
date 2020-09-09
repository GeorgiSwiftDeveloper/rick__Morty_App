//
//  LocationController.swift
//  rickMorty
//
//  Created by Georgi Malkhasyan on 9/8/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//


import Foundation

class LocationController {
    func fetchMultipleLocations(queries: [String: String]? = nil, completion: @escaping ([Location]?) -> Void) {
        var baseURL = URL(string: "https://rickandmortyapi.com/api/location/")!
        
        let jsonDecoder = JSONDecoder()
        
        let task = URLSession.shared.dataTask(with: baseURL) { (data, response, error) in
            if let data = data, let location = try? jsonDecoder.decode(PagedInfo<Location>.self, from: data) {
                
                completion(location.results)
            }
            else {
                print("Could not decode")
                completion(nil)
            }
        }
        task.resume()
    }
}
