//
//  PostModel.swift
//  qodehub-swiftui (iOS)
//
//  Created by Rexford Machu on 11/25/20.
//

import Foundation

class PostModel: Identifiable {
    
    let id = UUID()
    let post: PostResponse
    
    init(article: PostResponse) {
        self.post = article
    }
    
    var title: String {
        return post.title ?? ""
    }
    
    var description: String {
        return post.body ?? ""
    }
    
}


class NewsModel: Identifiable {
    
    let id = UUID()
    let news: News
    
    init(article: News) {
        self.news = article
    }
    
    var title: String {
        return news.articles![0].author
    }
    
    var description: String {
        return news.articles![0].publisher
    }
    
}
