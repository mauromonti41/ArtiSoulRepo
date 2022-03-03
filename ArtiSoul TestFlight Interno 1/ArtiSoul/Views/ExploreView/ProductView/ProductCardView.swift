//
//  ProductCardView.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 17/02/22.
//

import SwiftUI
import Foundation

struct ProductCardView: View {
    
    @EnvironmentObject var artisanViewModel : ArtisanViewModel
    
    @State var product : ProductModel
//    @State var artisan : ArtisanModel
//    var productImage: Image
//    var quote: String
//    var favorite: Bool
//    var info: String
    
    var body: some View {
        
        ScrollView(.horizontal){
        HStack(spacing: 3){
            Spacer()
        VStack(alignment: .leading, spacing: 0){
            product.image1
                .resizable()
                .scaledToFill()
                .frame(width: 375, height: 460, alignment: .center)
                .cornerRadius(10, corners: [.topLeft, .topRight])
//                .padding(0.0)
            ProductCardBot(description: "My total production time:", info: product.totalProductionTime)
                .frame(width:375)
        }
            Spacer()
            VStack(alignment: .leading, spacing: 0){
                product.image1
                .resizable()
                    .scaledToFill()
                    .frame(width: 375, height: 460, alignment: .center)
                    .cornerRadius(10, corners: [.topLeft, .topRight])
    //                .padding(0.0)
                ProductCardBot(description: "What am I made of:", info: product.whatMadeOf)
                    .frame(width:375)
            }
            Spacer()
            VStack(alignment: .leading, spacing: 0){
                product.image2
                    .resizable()
                    .scaledToFill()
                    .frame(width: 375, height: 460, alignment: .center)
                    .cornerRadius(10, corners: [.topLeft, .topRight])
    //                .padding(0.0)
                ProductCardBot(description: "How to take care of me:", info: product.howToCare)
                    .frame(width:375)
            }
            Spacer()
            VStack(alignment: .leading, spacing: 0){
                product.image3
                    .resizable()
                    .scaledToFill()
                    .frame(width: 375, height: 460, alignment: .center)
                    .cornerRadius(10, corners: [.topLeft, .topRight])
    //                .padding(0.0)
                ProductCardBot(description: "How to move me:", info: product.howToMove)
                    .frame(width:375)
            }
        Spacer()
            }
        }
        ProfileCardView(name: "\(product.artisan.name) \(product.artisan.surname)" , title: product.artisan.title, profileImage: product.artisan.profileImage)
        
    }
    
    func switchFavorite(favorite: inout Bool){
        
        if favorite == false{
            favorite = true
        }
        
        else{
            favorite = false
        }
        return
    }
}

//struct ProductCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductCardView(productImage: Image("SingleFlowerJar_1"), descrizione: "8 days, which is equivalent Harry Potter Marathon", favorite: false, info: "My total production time:")
//    }
//}
