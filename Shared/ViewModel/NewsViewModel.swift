//
//  NewsViewModel.swift
//  qodehub-swiftui (iOS)
//
//  Created by Rexford Machu on 11/24/20.
//


import UIKit
import Combine
let urlLink = URL(string: "https://learnappmaking.com/ex/news/articles/Apple?secret=CHWGk3OTwgObtQxGqdLvVhwji6FsYm95oe87o3ju")!


class PostViewModel: ObservableObject {
    
    init() {
        getPosts()
    }
    @Published var articles = [PostModel]()
    
    private func getPosts() {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }
        
        NetworkManager.loadData(url: url) { articles in
            
            if let articles = articles {
                self.articles = articles.map(PostModel.init)
            }
            
        }
        
    }
    
}



class NewsViewModel: ObservableObject {
    
    init() {
        getNews()
    }
    @Published var articles = [Article]()
    
    private func getNews() {
        
        guard let url = URL(string: "https://learnappmaking.com/ex/news/articles/Apple?secret=CHWGk3OTwgObtQxGqdLvVhwji6FsYm95oe87o3ju") else {
            return
        }
        
        NetworkManagerI.loadData(url: url) { articles in
            
            if let articles = articles {
                self.articles = articles
            }
            
        }
        
    }
    
}
