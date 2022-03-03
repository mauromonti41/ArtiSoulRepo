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
    
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        
        LazyVGrid(columns: columns, spacing: 15){

//            Section{
                ForEach(productViewModel.products){ item in
                    
//                    NAVIGATION LINK INATTIVO
//                    NavigationLink(destination: ProductView()){
                    
//                        Richiamo CardView + parametri
                    
                       
                    NavigationLink(destination: ProductView(product: item)){
                        TileView(productImage: item.image1, productName: item.productName, artisanName: "\(item.artisan.name) \(item.artisan.surname)")
                        .listRowBackground(Color.clear)
                        }
                    }
//               }
//            }
        }
//        .padding([.leading, .trailing], 18)
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

