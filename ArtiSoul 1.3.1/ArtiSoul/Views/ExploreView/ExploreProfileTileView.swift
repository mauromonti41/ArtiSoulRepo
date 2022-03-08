//
//  ExploreProfileTileView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 02/03/22.
//

import Foundation
import SwiftUI

struct ExploreProfileTileView: View {
    

    var productImage: String
    var productName: String
   
   
    
    var body: some View {
        
        ZStack{
            
            Image(productImage)
                .resizable()
                .scaledToFill()
                .frame(width: 187, height: 187)
                .cornerRadius(10)
                .padding(0.0)
                
            
            
            
                Text(productName)
                    .bold()
                    .font(.system(size: 17))
                    .foregroundColor(.primary)
                    .padding(.top, 141)
                    .padding(.leading, 16)
                    .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                    
                 
                
                    
                    
            
           
            
        }.frame(width: 187, height: 187)
    }
}

struct ExploreProfileTileView_Preview: PreviewProvider{
    
    
   static var previews: some View {
        
       ExploreProfileTileView(productImage: "Mug1", productName: "Mug")
    }
}
