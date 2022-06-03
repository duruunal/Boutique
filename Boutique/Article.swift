//
//  Article.swift
//  Boutique
//
//  Created by Student on 2022-05-10.
//

import Foundation
import SwiftUI
// Catégories
enum Category: String,CaseIterable,Codable,Hashable
{
    case bague
    case camera
    case montre
    case panda
    case lion
    case cat
}
// caractéristiques de chaque article 18 struct Article: Identifiable, Hashable
struct Article: Identifiable,Hashable
{
    var id: String
    var name: String
    var imageName: String
    var category: Category
    var description: String
    var price: Double
    
}

//convertir les donnes sous forme de clé-valeur
func articleDictionnaryFrom(article: Article) -> [String : Any] {
    return NSDictionary(objects: [article.id,
                               article.name,
                               article.imageName,
                               article.category.rawValue,
                               article.description,
                               article.price
                                ], forKeys: [kID as NSCopying,
                                             kNAME as NSCopying,
                                             kIMAGENAME as NSCopying,
                                             kCATEGORY as NSCopying,
                                             kDESCRIPTION as NSCopying,
                                             kPRICE as NSCopying
    ]) as! [String : Any]
}
//Fonction pour parcourir le tableau et transférer les données dans Firebase
func createMenu(){
    for article in articleData{
        FirebaseReference( .Menu).addDocument(data: articleDictionnaryFrom(article: article))
    }
}

// données qui permettre à placer les donnees dans firebase
let articleData = [
    //BAGUES
    Article(id: UUID().uuidString, name: "Bague 1", imageName: "bague1", category: Category.bague, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc consectetur bibendum turpis et sagittis. Suspendisse potenti. Vestibulum vitae pellentesque est, at consequat dui.", price: 139.50),
    
    Article(id: UUID().uuidString, name: "Bague 2", imageName: "bague2", category: Category.bague, description: "Donec sit amet tellus pretium ante interdum facilisis. Maecenas at tortor egestas, suscipit ex pharetra, ullamcorper velit. Quisque vel leo sit amet dui suscipit consectetur. Aliquam pulvinar sem a arcu porttitor, sed imperdiet sem bibendum..", price: 120.00),
    
    Article(id: UUID().uuidString, name: "Bague 3", imageName: "bague3", category: Category.bague, description: "Nullam ac cursus augue. Donec malesuada massa a libero feugiat, id rhoncus nunc posuere. Suspendisse nec luctus ipsum. Nullam et aliquet enim. Etiam vel ante blandit, volutpat sapien vitae, placerat turpis.", price: 140.50),
    
    Article(id: UUID().uuidString, name: "Bague 4", imageName: "bague4", category: Category.bague, description: "Nam sit amet sapien in mi iaculis aliquam sed eu sapien. Etiam sit amet ex in neque commodo pulvinar id vel elit. Phasellus vel fringilla urna, vel commodo nibh. Morbi eget sodales felis. Donec ut ante id lectus blandit pellentesque eget at nibh.", price: 90.50),
    
    Article(id: UUID().uuidString, name: "Bague 5", imageName: "bague5", category: Category.bague, description: "Nam sit amet sapien in mi iaculis aliquam sed eu sapien. Etiam sit amet ex in neque commodo pulvinar id vel elit. Phasellus vel fringilla urna, vel commodo nibh. Morbi eget sodales felis. Donec ut ante id lectus blandit pellentesque eget at nibh.", price: 138.50),
    Article(id: UUID().uuidString, name: "Bague 6", imageName: "bague6", category: Category.bague, description: "Nam sit amet sapien in mi iaculis aliquam sed eu sapien. Etiam sit amet ex in neque commodo pulvinar id vel elit. Phasellus vel fringilla urna, vel commodo nibh. Morbi eget sodales felis. Donec ut ante id lectus blandit pellentesque eget at nibh.", price: 100.50),
    Article(id: UUID().uuidString, name: "Bague 7", imageName: "bague7", category: Category.bague, description: "Nam sit amet sapien in mi iaculis aliquam sed eu sapien. Etiam sit amet ex in neque commodo pulvinar id vel elit. Phasellus vel fringilla urna, vel commodo nibh. Morbi eget sodales felis. Donec ut ante id lectus blandit pellentesque eget at nibh.", price: 200.50),
    Article(id: UUID().uuidString, name: "Bague 8", imageName: "bague8", category: Category.bague, description: "Nam sit amet sapien in mi iaculis aliquam sed eu sapien. Etiam sit amet ex in neque commodo pulvinar id vel elit. Phasellus vel fringilla urna, vel commodo nibh. Morbi eget sodales felis. Donec ut ante id lectus blandit pellentesque eget at nibh.", price: 180.50),
        
    //CAMERAS
    Article(id: UUID().uuidString, name: "Camera 1", imageName: "camera1", category: Category.camera, description: "Nam sit amet sapien in mi iaculis aliquam sed eu sapien. Etiam sit amet ex in neque commodo pulvinar id vel elit. Phasellus vel fringilla urna, vel commodo nibh. Morbi eget sodales felis. Donec ut ante id lectus blandit pellentesque eget at nibh.", price: 450.00),
    
    Article(id: UUID().uuidString, name: "Camera 2", imageName: "camera2", category: Category.camera, description: "Nam sit amet sapien in mi iaculis aliquam sed eu sapien. Etiam sit amet ex in neque commodo pulvinar id vel elit. Phasellus vel fringilla urna, vel commodo nibh. Morbi eget sodales felis. Donec ut ante id lectus bland", price: 620.00),

    Article(id: UUID().uuidString, name: "Camera 3", imageName: "camera3", category: Category.camera, description: "Nam sit amet sapien in mi iaculis aliquam sed eu sapien. Etiam sit amet ex in neque commodo pulvinar id vel elit. Phasellus vel fringilla urna, vel commodo nibh. Morbi eget sodales felis. Donec ut ante id lectus blandit pellentesque eget at nibh.", price: 520.50),

    Article(id: UUID().uuidString, name: "Camera 4", imageName: "camera4", category: Category.camera, description: "Nam sit amet sapien in mi iaculis aliquam sed eu sapien. Etiam sit amet ex in neque commodo pulvinar id vel elit. Phasellus vel fringilla urna, vel commodo nibh. Morbi eget sodales felis. Donec ut ante id lectus blandit pellentesque eget at nibh.", price: 300.00),
    Article(id: UUID().uuidString, name: "Camera 5", imageName: "camera5", category: Category.camera, description: "Nam sit amet sapien in mi iaculis aliquam sed eu sapien. Etiam sit amet ex in neque commodo pulvinar id vel elit. Phasellus vel fringilla urna, vel commodo nibh. Morbi eget sodales felis. Donec ut ante id lectus blandit pellentesque eget at nibh.", price: 275.00),
    Article(id: UUID().uuidString, name: "Camera 6", imageName: "camera6", category: Category.camera, description: "Nam sit amet sapien in mi iaculis aliquam sed eu sapien. Etiam sit amet ex in neque commodo pulvinar id vel elit. Phasellus vel fringilla urna, vel commodo nibh. Morbi eget sodales felis. Donec ut ante id lectus blandit pellentesque eget at nibh.", price: 455.00),
    Article(id: UUID().uuidString, name: "Camera 7", imageName: "camera7", category: Category.camera, description: "Nam sit amet sapien in mi iaculis aliquam sed eu sapien. Etiam sit amet ex in neque commodo pulvinar id vel elit. Phasellus vel fringilla urna, vel commodo nibh. Morbi eget sodales felis. Donec ut ante id lectus blandit pellentesque eget at nibh.", price: 400.00),
    Article(id: UUID().uuidString, name: "Camera 8", imageName: "camera8", category: Category.camera, description: "Nam sit amet sapien in mi iaculis aliquam sed eu sapien. Etiam sit amet ex in neque commodo pulvinar id vel elit. Phasellus vel fringilla urna, vel commodo nibh. Morbi eget sodales felis. Donec ut ante id lectus blandit pellentesque eget at nibh.", price: 300.00),
    
    //MONTRES
    Article(id: UUID().uuidString, name: "Montre 1", imageName: "montre1", category: Category.montre, description: "Nam sit amet sapien in mi iaculis aliquam sed eu sapien. Etiam sit amet ex in neque commodo pulvinar id vel elit. Phasellus vel fringilla urna, vel commodo nibh. Morbi eget sodales felis. Donec ut ante id lectus blandit pellentesque eget at nibh.", price: 940.00),
    
    Article(id: UUID().uuidString, name: "Montre 2", imageName: "montre2", category: Category.montre, description: "Nam sit amet sapien in mi iaculis aliquam sed eu sapien. Etiam sit amet ex in neque commodo pulvinar id vel elit. Phasellus vel fringilla urna, vel commodo nibh. Morbi eget sodales felis. Donec ut ante id lectus blandit pellentesque eget at nibh.", price: 903.00),
    
    Article(id: UUID().uuidString, name: "Montre 3", imageName: "montre3", category: Category.montre, description: "Etiam interdum eros enim, vitae ornare erat lacinia quis. Proin rhoncus elit at dolor consequat pharetra. Aliquam maximus purus enim, malesuada pretium est mollis non. Nunc sed commodo dolor, hendrerit blandit mi. Maecenas congue justo dapibus justo venenatis tempus id nec dui.", price: 800.00),
    
    Article(id: UUID().uuidString, name: "Montre 4", imageName: "montre4", category: Category.montre, description: "Etiam interdum eros enim, vitae ornare erat lacinia quis. Proin rhoncus elit at dolor consequat pharetra. Aliquam maximus purus enim, malesuada pretium est mollis non. Nunc sed commodo dolor, hendrerit blandit mi. Maecenas congue justo dapibus justo venenatis tempus id nec dui.", price: 892.00),
    
    Article(id: UUID().uuidString, name: "Montre 5", imageName: "montre5", category: Category.montre, description: "Etiam interdum eros enim, vitae ornare erat lacinia quis. Proin rhoncus elit at dolor consequat pharetra. Aliquam maximus purus enim, malesuada pretium est mollis non. Nunc sed commodo dolor, hendrerit blandit mi. Maecenas congue justo dapibus justo venenatis tempus id nec dui.", price: 860.50),
    Article(id: UUID().uuidString, name: "Montre 6", imageName: "montre6", category: Category.montre, description: "Etiam interdum eros enim, vitae ornare erat lacinia quis. Proin rhoncus elit at dolor consequat pharetra. Aliquam maximus purus enim, malesuada pretium est mollis non. Nunc sed commodo dolor, hendrerit blandit mi. Maecenas congue justo dapibus justo venenatis tempus id nec dui.", price: 980.50),
    Article(id: UUID().uuidString, name: "Montre 7", imageName: "montre7", category: Category.montre, description: "Etiam interdum eros enim, vitae ornare erat lacinia quis. Proin rhoncus elit at dolor consequat pharetra. Aliquam maximus purus enim, malesuada pretium est mollis non. Nunc sed commodo dolor, hendrerit blandit mi. Maecenas congue justo dapibus justo venenatis tempus id nec dui.", price: 980.50),
    Article(id: UUID().uuidString, name: "Montre 8", imageName: "montre8", category: Category.montre, description: "Etiam interdum eros enim, vitae ornare erat lacinia quis. Proin rhoncus elit at dolor consequat pharetra. Aliquam maximus purus enim, malesuada pretium est mollis non. Nunc sed commodo dolor, hendrerit blandit mi. Maecenas congue justo dapibus justo venenatis tempus id nec dui.", price: 980.50),
    Article(id: UUID().uuidString, name: "Montre 9", imageName: "montre9", category: Category.montre, description: "Etiam interdum eros enim, vitae ornare erat lacinia quis. Proin rhoncus elit at dolor consequat pharetra. Aliquam maximus purus enim, malesuada pretium est mollis non. Nunc sed commodo dolor, hendrerit blandit mi. Maecenas congue justo dapibus justo venenatis tempus id nec dui.", price: 980.50),

    //PANDAS
    Article(id: UUID().uuidString, name: "Panda 1", imageName: "panda1", category: Category.panda, description: "Le panda géant est une espèce d'ours endémique de Chine. Il se caractérise par son audacieux pelage noir et blanc et son corps rond. Le nom de « panda géant » est parfois utilisé pour le distinguer du panda roux, un mustéloïde voisin. Bien qu'il appartienne à l'ordre des carnivores, le panda géant est un folivore, les pousses et les feuilles de bambou constituant plus de 99 % de son alimentation. Les pandas géants à l'état sauvage mangent occasionnellement d'autres herbes, des tubercules sauvages ou même de la viande sous forme d'oiseaux, de rongeurs ou de charognes. En captivité, ils peuvent recevoir du miel, des œufs, du poisson, des ignames, des feuilles d'arbustes, des oranges ou des bananes ainsi que des aliments spécialement préparés. Le panda géant vit dans quelques chaînes de montagnes du centre de la Chine, principalement dans le Sichuan, mais aussi dans le Shaanxi et Gansu.", price: 2500.00),
    
    Article(id: UUID().uuidString, name: "Panda 2", imageName: "panda2", category: Category.panda, description: "Le panda géant est une espèce d'ours endémique de Chine. Il se caractérise par son audacieux pelage noir et blanc et son corps rond. Le nom de « panda géant » est parfois utilisé pour le distinguer du panda roux, un mustéloïde voisin. Bien qu'il appartienne à l'ordre des carnivores, le panda géant est un folivore, les pousses et les feuilles de bambou constituant plus de 99 % de son alimentation. Les pandas géants à l'état sauvage mangent occasionnellement d'autres herbes, des tubercules sauvages ou même de la viande sous forme d'oiseaux, de rongeurs ou de charognes. En captivité, ils peuvent recevoir du miel, des œufs, du poisson, des ignames, des feuilles d'arbustes, des oranges ou des bananes ainsi que des aliments spécialement préparés. Le panda géant vit dans quelques chaînes de montagnes du centre de la Chine, principalement dans le Sichuan, mais aussi dans le Shaanxi et Gansu.", price: 2500.00),
    
    Article(id: UUID().uuidString, name: "Panda 3", imageName: "panda3", category: Category.panda, description: "Le panda géant est une espèce d'ours endémique de Chine. Il se caractérise par son audacieux pelage noir et blanc et son corps rond. Le nom de « panda géant » est parfois utilisé pour le distinguer du panda roux, un mustéloïde voisin. Bien qu'il appartienne à l'ordre des carnivores, le panda géant est un folivore, les pousses et les feuilles de bambou constituant plus de 99 % de son alimentation. Les pandas géants à l'état sauvage mangent occasionnellement d'autres herbes, des tubercules sauvages ou même de la viande sous forme d'oiseaux, de rongeurs ou de charognes. En captivité, ils peuvent recevoir du miel, des œufs, du poisson, des ignames, des feuilles d'arbustes, des oranges ou des bananes ainsi que des aliments spécialement préparés. Le panda géant vit dans quelques chaînes de montagnes du centre de la Chine, principalement dans le Sichuan, mais aussi dans le Shaanxi et Gansu.", price: 2500.00),

    //CHATS
    Article(id: UUID().uuidString, name: "Cat 1", imageName: "cat1", category: Category.cat, description: "Le chat est une espèce domestique de petit mammifère carnivore. C'est la seule espèce domestiquée de la famille des félidés et on l'appelle souvent le chat domestique pour le distinguer des membres sauvages de la famille. Les chats domestiques sont appréciés des humains pour leur compagnie et leur capacité à tuer les rongeurs. L'anatomie du chat est similaire à celle des autres espèces de félidés : il a un corps fort et flexible, des réflexes rapides, des dents acérées et des griffes rétractables adaptées pour tuer de petites proies. Sa vision nocturne et son odorat sont bien développés. La communication du chat comprend des vocalisations comme le miaulement, le ronronnement, le trille, le sifflement, le grognement et le grognement ainsi que le langage corporel spécifique au chat.", price: 200.00),
    
    Article(id: UUID().uuidString, name: "Cat 2", imageName: "cat2", category: Category.cat, description: "Le chat est une espèce domestique de petit mammifère carnivore. C'est la seule espèce domestiquée de la famille des félidés et on l'appelle souvent le chat domestique pour le distinguer des membres sauvages de la famille. Les chats domestiques sont appréciés des humains pour leur compagnie et leur capacité à tuer les rongeurs. L'anatomie du chat est similaire à celle des autres espèces de félidés : il a un corps fort et flexible, des réflexes rapides, des dents acérées et des griffes rétractables adaptées pour tuer de petites proies. Sa vision nocturne et son odorat sont bien développés. La communication du chat comprend des vocalisations comme le miaulement, le ronronnement, le trille, le sifflement, le grognement et le grognement ainsi que le langage corporel spécifique au chat.", price: 200.00),
    
    Article(id: UUID().uuidString, name: "Cat 3", imageName: "cat3", category: Category.cat, description: "Le chat est une espèce domestique de petit mammifère carnivore. C'est la seule espèce domestiquée de la famille des félidés et on l'appelle souvent le chat domestique pour le distinguer des membres sauvages de la famille. Les chats domestiques sont appréciés des humains pour leur compagnie et leur capacité à tuer les rongeurs. L'anatomie du chat est similaire à celle des autres espèces de félidés : il a un corps fort et flexible, des réflexes rapides, des dents acérées et des griffes rétractables adaptées pour tuer de petites proies. Sa vision nocturne et son odorat sont bien développés. La communication du chat comprend des vocalisations comme le miaulement, le ronronnement, le trille, le sifflement, le grognement et le grognement ainsi que le langage corporel spécifique au chat.", price: 200.00),
    
    Article(id: UUID().uuidString, name: "Cat 4", imageName: "cat4", category: Category.cat, description: "Le chat est une espèce domestique de petit mammifère carnivore. C'est la seule espèce domestiquée de la famille des félidés et on l'appelle souvent le chat domestique pour le distinguer des membres sauvages de la famille. Les chats domestiques sont appréciés des humains pour leur compagnie et leur capacité à tuer les rongeurs. L'anatomie du chat est similaire à celle des autres espèces de félidés : il a un corps fort et flexible, des réflexes rapides, des dents acérées et des griffes rétractables adaptées pour tuer de petites proies. Sa vision nocturne et son odorat sont bien développés. La communication du chat comprend des vocalisations comme le miaulement, le ronronnement, le trille, le sifflement, le grognement et le grognement ainsi que le langage corporel spécifique au chat.", price: 200.00),
    
    Article(id: UUID().uuidString, name: "Cat 5", imageName: "cat5", category: Category.cat, description: "Le chat est une espèce domestique de petit mammifère carnivore. C'est la seule espèce domestiquée de la famille des félidés et on l'appelle souvent le chat domestique pour le distinguer des membres sauvages de la famille. Les chats domestiques sont appréciés des humains pour leur compagnie et leur capacité à tuer les rongeurs. L'anatomie du chat est similaire à celle des autres espèces de félidés : il a un corps fort et flexible, des réflexes rapides, des dents acérées et des griffes rétractables adaptées pour tuer de petites proies. Sa vision nocturne et son odorat sont bien développés. La communication du chat comprend des vocalisations comme le miaulement, le ronronnement, le trille, le sifflement, le grognement et le grognement ainsi que le langage corporel spécifique au chat.", price: 200.00),

    //LIONS
    Article(id: UUID().uuidString, name: "Lion 1", imageName: "lion1", category: Category.lion, description: "Le lion est un grand félin du genre Panthera originaire d'Afrique et d'Inde. Il a un corps musclé à large poitrine, une tête courte et arrondie, des oreilles rondes et une touffe poilue au bout de sa queue. Il est sexuellement dimorphe; les lions mâles adultes sont plus gros que les femelles et ont une crinière proéminente. C'est une espèce sociale, formant des groupes appelés fiertés. La fierté d'un lion se compose de quelques mâles adultes, de femelles apparentées et de petits. Des groupes de lions femelles chassent généralement ensemble, se nourrissant principalement de grands ongulés. Le lion est un prédateur au sommet et à la clé de voûte; bien que certains lions se nourrissent lorsque l'occasion se présente et qu'ils soient connus pour chasser les humains, l'espèce ne recherche généralement pas activement et ne s'attaque pas aux humains. Le lion habite les prairies, les savanes et les arbustes.", price: 501.20),
    
    Article(id: UUID().uuidString, name: "Lion 2", imageName: "lion2", category: Category.lion, description: "Le lion est un grand félin du genre Panthera originaire d'Afrique et d'Inde. Il a un corps musclé à large poitrine, une tête courte et arrondie, des oreilles rondes et une touffe poilue au bout de sa queue. Il est sexuellement dimorphe; les lions mâles adultes sont plus gros que les femelles et ont une crinière proéminente. C'est une espèce sociale, formant des groupes appelés fiertés. La fierté d'un lion se compose de quelques mâles adultes, de femelles apparentées et de petits. Des groupes de lions femelles chassent généralement ensemble, se nourrissant principalement de grands ongulés. Le lion est un prédateur au sommet et à la clé de voûte; bien que certains lions se nourrissent lorsque l'occasion se présente et qu'ils soient connus pour chasser les humains, l'espèce ne recherche généralement pas activement et ne s'attaque pas aux humains. Le lion habite les prairies, les savanes et les arbustes.", price: 301.20),

    Article(id: UUID().uuidString, name: "Lion 3", imageName: "lion3", category: Category.lion, description: "Le lion est un grand félin du genre Panthera originaire d'Afrique et d'Inde. Il a un corps musclé à large poitrine, une tête courte et arrondie, des oreilles rondes et une touffe poilue au bout de sa queue. Il est sexuellement dimorphe; les lions mâles adultes sont plus gros que les femelles et ont une crinière proéminente. C'est une espèce sociale, formant des groupes appelés fiertés. La fierté d'un lion se compose de quelques mâles adultes, de femelles apparentées et de petits. Des groupes de lions femelles chassent généralement ensemble, se nourrissant principalement de grands ongulés. Le lion est un prédateur au sommet et à la clé de voûte; bien que certains lions se nourrissent lorsque l'occasion se présente et qu'ils soient connus pour chasser les humains, l'espèce ne recherche généralement pas activement et ne s'attaque pas aux humains. Le lion habite les prairies, les savanes et les arbustes.", price: 201.20),

    Article(id: UUID().uuidString, name: "Lion 4", imageName: "lion4", category: Category.lion, description: "Le lion est un grand félin du genre Panthera originaire d'Afrique et d'Inde. Il a un corps musclé à large poitrine, une tête courte et arrondie, des oreilles rondes et une touffe poilue au bout de sa queue. Il est sexuellement dimorphe; les lions mâles adultes sont plus gros que les femelles et ont une crinière proéminente. C'est une espèce sociale, formant des groupes appelés fiertés. La fierté d'un lion se compose de quelques mâles adultes, de femelles apparentées et de petits. Des groupes de lions femelles chassent généralement ensemble, se nourrissant principalement de grands ongulés. Le lion est un prédateur au sommet et à la clé de voûte; bien que certains lions se nourrissent lorsque l'occasion se présente et qu'ils soient connus pour chasser les humains, l'espèce ne recherche généralement pas activement et ne s'attaque pas aux humains. Le lion habite les prairies, les savanes et les arbustes.", price: 401.20),
]



