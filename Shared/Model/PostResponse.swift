//
//  PostResponse.swift
//  qodehub-swiftui (iOS)
//
//  Created by Rexford Machu on 11/25/20.
//

import Foundation

struct PostResponse: Codable {
    let userId: Int
    let id: Int?
    let title: String?
    let body: String?
}

struct News : Codable{
    let count: Int?
    let urls: url?
    let articles: [Article]?
}
struct url : Codable{
    let next: String
    let prev: String
    let _self: String
    
    private enum CodingKeys: String, CodingKey {
        case next, prev,_self = "self"
  }
}

struct Article : Codable,Identifiable{
let id : String
let url : String
let title: String
let text: String
let publisher: String
let author: String
let image : String
let date: String
}
