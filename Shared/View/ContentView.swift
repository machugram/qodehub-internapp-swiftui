//
//  ContentView.swift
//  Shared
//
//  Created by Rexford Machu on 11/24/20.
//

import SwiftUI
struct ContentView: View {
   // @ObservedObject var model = PostViewModel()
    @ObservedObject var articleModel = NewsViewModel()
    var body: some View {
        NavigationView{
            List(articleModel.articles){article  in
                NavigationLink(destination: NewsDetailView(article: article)){
                   TableViewCell(article: article)
            }
            .navigationTitle("News")
                
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
}
}
