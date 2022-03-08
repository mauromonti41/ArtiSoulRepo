//
//  GridView.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 16/02/22.
//

import Foundation
import SwiftUI

struct GridView: View  {
    
    @EnvironmentObject var productViewModel : ProductViewModel

//    @EnvironmentObject var artisanViewModel : ArtisanViewModel
//    var artisans : [ArtisanModel]
//    @State var product : ProductModel
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        
        LazyVGrid(columns: columns, spacing: 7){

//            Section{
                ForEach(productViewModel.products){ item in
                    
//                    NAVIGATION LINK INATTIVO
//                    NavigationLink(destination: ProductView()){
                    
//                        Richiamo CardView + parametri
                    
                    let variableItem : ProductModel = ProductModel(name: item.name, material: item.material, artisanName: item.artisanName,artisanSurname: item.artisanSurname, whatMadeOf: item.whatMadeOf, howToCare: item.howToCare, howToMove: item.howToMove, image1: item.image1, image2: item.image2, image3: item.image3, image4: item.image4, totalProductionTime: item.totalProductionTime, title: item.title,profileImage: item.profileImage)
                       
                    NavigationLink(destination: ProductView(product: variableItem)){
                        TileView(productImage: item.image1, productName: item.name, artisanName: item.artisanName, artisanSurname: item.artisanSurname)
                        .listRowBackground(Color.clear)
                        }
                    }
//               }
//            }
        }
        .padding(.horizontal, 16)
    }
    
//    func searchName(artisanId : UUID) -> (String, String?){
//        
//        for i in artisans{
//            
//            if artisanId == i.id{
//                return (i.name,i.surname)
//            }
//        }
//        return ("","")
//    }
}



struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}

