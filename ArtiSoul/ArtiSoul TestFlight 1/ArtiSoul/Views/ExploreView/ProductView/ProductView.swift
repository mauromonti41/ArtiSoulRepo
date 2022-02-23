//
//  SwiftUIView.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 16/02/22.
//

import SwiftUI

struct ProductView: View {
    
    //    @StateObject private var viewModelProduct = ProductViewModel()
    //    @StateObject private var viewModelArtisan = ArtisanViewModel()
    @State var product : ProductModel
    
//    var selectedArtisan : ArtisanModel
    
    var body: some View{
        
        
            
            VStack{
                ProductCardView(product: product)
//                ProfileCardView(artisan: )
            }.navigationTitle(product.name)
        
    }
}


//struct ProductView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductView()
//    }
//}

