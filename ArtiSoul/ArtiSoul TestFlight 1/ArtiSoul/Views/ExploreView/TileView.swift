//
//  ContentView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 07/02/22.
//
import Foundation
import SwiftUI

struct TileView: View {
    

    var productImage: String
    var productName: String
    var artisanName: String
   
    
    var body: some View {
        
        ZStack(alignment: .bottomLeading){
            
            Image(productImage)
                .resizable()
                .scaledToFill()
                .frame(width: 187, height: 187)
                .cornerRadius(10)
                .padding(0.0)
                
            
            VStack(alignment: .leading, spacing: 0.0){
            
                Text(productName)
                    .bold()
                    .font(.system(size: 16))
                    .foregroundColor(.primary)
                    
                
                Text("\(artisanName)"  )
                    .font(.system(size: 13))
                    .foregroundColor(.secondary)
                    
                    
            }
            .padding()
//            .frame(width: /*@START_MENU_TOKEN@*/131.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/45.0/*@END_MENU_TOKEN@*/)
            
        }.frame(width: 187, height: 187, alignment: .center)
    }
}

//struct TileView_Previews: PreviewProvider {
//    static var previews: some View {
////        CardView(productImage: [Image("SingleFlowerJar_1")], productName: "Single flower jar", productArtisanName: "Claudio", productArtisanSurname: "Pulicati")
//        TileView()
//
////        CardView(productImage: [Image("Anemone1")], productName: "Anemone", productArtisanName: "Silvia", productArtisanSurname: "Raga")
//
//    }
//}
