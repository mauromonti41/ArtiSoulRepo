//
//  GridView.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 16/02/22.
//

import Foundation
import SwiftUI

struct GridView: View  {
    
    var artisans : [ArtisanInfo]
    var products : [Productinfo]
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        
        LazyVGrid(columns: columns, spacing: 15){

            Section{
                ForEach(products){  product in
                    NavigationLink(destination: ProductView()){

                        
                        let (artisanName,artisanSurname) = searchName(artisanId: product.artisanId)
                    
//                        Richiamo CardView + parametri
                    
                        CardView(productImage: product.image, productName:product.name, productArtisanName: artisanName, productArtisanSurname: artisanSurname ?? "")
                            .listRowBackground(Color.clear)
                    }
               }
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

//struct MyView_Previews: PreviewProvider {
//    static var previews: some View {
//        GridView(artisans: [ArtisanInfo(idProduct : [UUID()], name : "A", surname : "B", imageName : "C", shortBio : "D")], products:   [
//            Productinfo(name: "Mug", artisanId: UUID(), image: [Image("Mug1"),Image("Mug2"),Image("Mug3"),Image("Mug4")], tag: [.all,.Clay]),
//            Productinfo(name: "Anemone", artisanId: UUID(), image: [Image("Anemone1"),Image("Anemone2"), Image("Anemone3"),Image("Anemone4")], tag: [.all,.Paper]),
//            Productinfo(name: "Single flower jar", artisanId: UUID(), descrizione: [], image: [Image("SingleFlowerJar_1"),Image("SingleFlowerJar_2"),Image("SingleFlowerJar_3"),Image("SingleFlowerJar_4")], tag: [.all,.Clay])
//        ])
//    }
//}

