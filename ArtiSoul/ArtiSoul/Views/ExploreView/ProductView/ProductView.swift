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
    var selectedProduct : ProductModel
    var selectedArtisan : ArtisanModel
    
    var body: some View{
        
        NavigationView{
            
            VStack{
                ScrollViewHorizontal(productData: selectedProduct.cardDetails, favorite: selectedProduct.favorite)
                ProfileCardView(artisan: selectedArtisan)
            }.navigationTitle(selectedProduct.name)
        }
    }
}


struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(
            selectedProduct: ProductModel(name: "Mug", cardDetails:
                                            //             Mug1
                                         [CardModel(descrizione: "15 days, which is equivalent to the first five seasons of Big Bang Theory.", image: Image("Mug1"), infos: "My total production time:"),
                                          
                                          CardModel(descrizione: "Clay, nail varnish", image: Image("Mug2"), infos: "What am I made of:"),
                                          CardModel(descrizione: "Wash me by hand. Dry me carefully.", image: Image("Mug3"), infos: "How to take care of me:"),
                                          
                                          CardModel(descrizione: "Wrap me in paper that protects me and put me in a box.", image: Image("Mug4"), infos: "How to move me:")], artisanId: UUID(), favorite: false, tag: [.all,.Clay]),
            selectedArtisan: ArtisanModel(idProduct : [UUID()], name : "Elisa", surname : "Castelletta", title: "Ceramista", image: Image("Castelletta"), shortBio : "D"))
    }
}

