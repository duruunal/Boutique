//
//  ArticleRow.swift
//  Boutique
//
//  Created by Student on 2022-05-10.
//

import SwiftUI

import SwiftUI

struct ArticleRow: View {
    var categoryName: String
    var articles: [Article]
    var body: some View {
        VStack(alignment: .leading)
        {
            Text(self.categoryName)
                .font(.title)
               
            ScrollView(.horizontal, showsIndicators: false)
            {
                HStack
                {
                    ForEach(self.articles) {article in
                        ArticleItem(article: article)
                            .frame(width: 300)
                            .padding(.trailing,30)
                        
                    }
                    
                }//Fin Hstack
                
            }//Fin scrollView
            
        }//Fin Vstack
        
    }
}

struct ArticleRow_Previews: PreviewProvider {
    static var previews: some View {
        ArticleRow(categoryName: "bague", articles: articleData)
    }
}
