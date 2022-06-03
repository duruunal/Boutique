//
//  ContentView.swift
//  Boutique
//
//  Created by Student on 2022-05-10.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var articleListener = ArticleListener()
    @State private var showingBasket = false
    var categories: [String : [Article]]
    {
        .init(grouping: articleListener.articles,
              by: {$0.category.rawValue})
    }
    var body: some View {
        NavigationView {
            List(categories.keys.sorted(),id: \String.self){
                key in
                ArticleRow(categoryName: "\(key)", articles: self.categories[key]!)
                    .frame(height:320)
                    
                
            }
                .navigationBarTitle(Text("Boutique"))
                .navigationBarItems(leading:
                                        Button(action: {
                    //code
                    print("log out")
                    //createMenu()
                }, label: {
                    Text("Log out")
                }), trailing: Button(action: {
                    //code
                    self.showingBasket.toggle()
                   // print("basket")
                }, label: {
                    Image("basket")
                })
                .sheet(isPresented: $showingBasket)
                {
                    OrderBasketView()
                }
            )
        }//Fin de navigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
