//
//  ScrollViewHorizontal.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 17/02/22.
//

import SwiftUI

struct ScrollViewHorizontal: View {
    

    @State var productData : [CardModel]
    var favorite : Bool
    
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack(spacing: 10) {
                
                ForEach(productData){ product in
                    Spacer()
                    ProductCardView(productImage: product.image, descrizione: product.descrizione, favorite: favorite, info: product.infos)
            }
                Spacer()
            .frame(alignment: .center)
        }
    }
}
}

struct ScrollViewHorizontal_Previews: PreviewProvider {
    static var previews: some View {
        
        ScrollViewHorizontal(productData: [
            CardModel(descrizione: "15 days, which is equivalent to the first five seasons of Big Bang Theory.", image: Image("Mug1"), infos: "My total production time:"),
                                           
            CardModel(descrizione: "Clay, nail varnish", image: Image("Mug2"), infos: "What am I made of:"),
            CardModel(descrizione: "Wash me by hand. Dry me carefully.", image: Image("Mug2"), infos: "How to take care of me:"),
                                                                    
            CardModel(descrizione: "Wrap me in paper that protects me and put me in a box.", image: Image("Mug3"), infos: "How to move me:")], favorite: false)
            
    }
}

