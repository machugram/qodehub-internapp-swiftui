//
//  TableViewCell.swift
//  qodehub-swiftui (iOS)
//
//  Created by Rexford Machu on 11/24/20.
//

import SwiftUI

struct TableViewCell: View {
    var article : Article
    var body: some View {
        VStack(alignment: .leading) {
            Text(article.title)
                .font(.headline)
            Text(article.publisher)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

struct TableViewCell_Previews: PreviewProvider {
    static var previews: some View {
        let sample = Article(id: "String", url: "Url", title: "Title", text: "Text", publisher: "Publisher", author: "Author", image: "image", date: "Date")
        TableViewCell(article: sample)
    }
}
