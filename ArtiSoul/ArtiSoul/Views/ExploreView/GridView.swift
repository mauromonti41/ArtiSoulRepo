//
//  GridView.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 16/02/22.
//

import Foundation
import SwiftUI

struct GridView: View  {
    
    var artisans : [ArtisanModel]
    var products : [ProductModel]
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        
        LazyVGrid(columns: columns, spacing: 15){

            Section{
                ForEach(products){  product in
                    
//                    NAVIGATION LINK INATTIVO
                    
                    
//                    NavigationLink(destination: ProductView()){

                        let (artisanName,artisanSurname) = searchName(artisanId: product.artisanId)
                    
//                        Richiamo CardView + parametri
                    
                    CardView(productImage: product.cardDetails[0].image, productName:product.name, productArtisanName: artisanName, productArtisanSurname: artisanSurname ?? "")
                        .listRowBackground(Color.clear)
                    }
//               }
            }
        }.padding([.leading, .trailing], 18)
    }
    
    func searchName(artisanId : UUID) -> (String, String?){
        
        for i in artisans{
            
            if artisanId == i.id{
                return (i.name,i.surname)
            }
        }
        return ("","")
    }
}



struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(artisans: [ArtisanModel(idProduct : [UUID()], name : "Claudio", surname : "Pulicati", title: "Ceramista", image: Image("Pulicati"), shortBio : "D")], products:   [
            ProductModel(name: "Mug", cardDetails:
    //             Mug1
                        [CardModel(descrizione: "15 days, which is equivalent to the first five seasons of Big Bang Theory.", image: Image("Mug1"), infos: "My total production time:"),
             
                         CardModel(descrizione: "Clay, nail varnish", image: Image("Mug2"), infos: "What am I made of:"),
                         
                         CardModel(descrizione: "Wash me by hand. Dry me carefully.", image: Image("Mug3"), infos: "How to take care of me:"),
                                      
                         CardModel(descrizione: "Wrap me in paper that protects me and put me in a box.", image: Image("Mug4"), infos: "How to move me:")], artisanId: UUID(), favorite: false, tag: [.all,.Clay]),
            
    //        2 Anemone
            ProductModel(name: "Anemone", cardDetails:
                            
                            [CardModel(descrizione: "15 days, which is equivalent to the first five seasons of Big Bang Theory.", image: Image("Anemone1"), infos: "My total production time:"),
             
                             CardModel(descrizione: "Clay, nail varnish", image: Image("Anemone2"), infos: "What am I made of:"),
                             CardModel(descrizione: "Wash me by hand. Dry me carefully.", image: Image("Anemone3"), infos: "How to take care of me:"),
                                      
                             CardModel(descrizione: "Wrap me in paper that protects me and put me in a box.", image: Image("Anemone4"), infos: "How to move me:")], artisanId: UUID(), favorite: false, tag: [.all,.Clay]),
            
    //        3 Single Flower Jar
            ProductModel(name: "Single Flower Jar", cardDetails:
                            
                            [CardModel(descrizione: "15 days, which is equivalent to the first five seasons of Big Bang Theory.", image: Image("SingleFlowerJar_1"), infos: "My total production time:"),
             
                             CardModel(descrizione: "Clay, nail varnish", image: Image("SingleFlowerJar_2"), infos: "What am I made of:"),
                             CardModel(descrizione: "Wash me by hand. Dry me carefully.", image: Image("SingleFlowerJar_3"), infos: "How to take care of me:"),
                                      
                             CardModel(descrizione: "Wrap me in paper that protects me and put me in a box.", image: Image("SingleFlowerJar_4"), infos: "How to move me:")], artisanId: UUID(), favorite: false, tag: [.all,.Clay])])
    }
}

