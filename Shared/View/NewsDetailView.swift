//
//  NewsDetailView.swift
//  qodehub-swiftui (iOS)
//
//  Created by Rexford Machu on 11/25/20.
//

import SwiftUI
import UIKit

struct NewsDetailView: View {
    var article : Article
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            Image("FR")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, maxHeight: 200)
            Text("\(article.author)")
                .font(.subheadline)
                .multilineTextAlignment(.leading)
            Text("\(article.text)")
                .font(.headline)
                .multilineTextAlignment(.leading)
        }
//        .navigationTitle("\(article.title)")
        .navigationBarTitle("\(article.title)",displayMode: .inline)
        .font(.headline)
        
    
    }
}

struct NewsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let sample = Article(id: "String", url: "Url", title: "Title", text: "Text", publisher: "Publisher", author: "oooooooooooooooooooooooooooooooo", image: "FR", date: "Date")
        NewsDetailView(article: sample)
    }
}
