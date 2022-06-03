//
//  FirebaseReference.swift
//  Boutique
//
//  Created by Student on 2022-05-10.
//

import Foundation
import FirebaseFirestore
enum FCollectionReference: String{

case User
case Menu
case Order
case Basket
}
// accès à chaque élément dans Firestore
func FirebaseReference( collectionReference: FCollectionReference) ->
CollectionReference{
    return Firestore.firestore().collection (collectionReference.rawvalue)

}
