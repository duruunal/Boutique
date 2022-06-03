//
//  Order.swift
//  Boutique
//
//  Created by Student on 2022-05-28.
//

import Foundation
class Order: Identifiable {
    
    var id: String!
    var customerId: String!
    var orderItems: [Article] = []
    var amount: Double!
    
    func saveOrderToFirestore() {
        
        FirebaseReference(.Order).document(self.id).setData(orderDictionaryFrom(self))
        {
            error in
            
            if error != nil {
                print("error saving order to firestore: ", error!.localizedDescription)
            }
        }
    }
    
}
// création de la commande
func orderDictionaryFrom(_ order: Order) -> [String : Any] {
    
    var allArticleIds: [String] = []
    
    for article in order.orderItems {
        allArticleIds.append(article.id)
    }
    
    return NSDictionary(objects: [order.id,
                                  order.customerId,
                                  allArticleIds,
                                  order.amount
                                ],
                        forKeys: [kID as NSCopying,
                                  kCUSTOMERID as NSCopying,
                                  kARTICLEIDS as NSCopying,
                                  kAMOUNT as NSCopying
    ]) as! [String : Any]
}
