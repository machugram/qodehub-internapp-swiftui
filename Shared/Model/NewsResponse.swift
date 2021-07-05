//
//  NewsResponse.swift
//  qodehub-swiftui (iOS)
//
//  Created by Rexford Machu on 11/24/20.
//

import Foundation

//
//
//class PostModel: Identifiable {
//    
//    let id = UUID()
//    let post: PostResponse
//    
//    init(article: PostResponse) {
//        self.post = article
//    }
//    
//    var title: String {
//        return post.title ?? ""
//    }
//    
//    var description: String {
//        return post.body ?? ""
//    }
//    
//}



//struct News : Codable{
//    let count: Int
//    let urls: url
//    let articles: [Article]
//    
//    init(count: Int, urls: url, articles:[Article]) {
//        self.count =  count
//        self.urls = urls
//        self.articles = articles
//    }
//}
//struct url : Codable{
//    let next: String
//    let prev: String
//    let _self: String
//    
//    private enum CodingKeys: String, CodingKey {
//        case next, prev,_self = "self"
//  }
//    
//    init(next: String, prev: String, _self:String) {
//        self.next =  next
//        self.prev = prev
//        self._self = _self
//    }
//}
//
//struct Article : Codable,Identifiable{
//let id : String
//let url : String
//let title: String
//let text: String
//let publisher: String
//let author: String
//let image : String
//let date: String
//    
//    init( id : String, url : String, title: String,text: String, publisher: String, author: String,image : String,
//date: String) {
//        self.author = author
//        self.id = id
//        self.url = url
//        self.title = title
//        self.text = text
//        self.publisher = publisher
//        self.image = image
//        self.date = date
//    }
//}
