//
//  NetworkManager.swift
//  qodehub-swiftui (iOS)
//
//  Created by Rexford Machu on 11/24/20.
//

import Foundation

class NetworkManager {
    
    static func loadData(url: URL, completion: @escaping ([PostResponse]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            if let response = try? JSONDecoder().decode([PostResponse].self, from: data) {
                DispatchQueue.main.async {
                    completion(response)
                }
            }
        }.resume()
        
    }
    
}


class NetworkManagerI {
    
    static func loadData(url: URL, completion: @escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            if let response = try? JSONDecoder().decode(News.self, from: data) {
                DispatchQueue.main.async {
                    completion(response.articles)
                }
            }
        }.resume()
        
    }
    
}
