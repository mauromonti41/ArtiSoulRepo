//
//  ExternalLinkView.swift
//  LocalArtiSoul
//
//  Created by Emanuele Cimmelli on 17/02/22.
//

import SwiftUI

struct ExternalLinkView: View {
    @State var artisan : ArtisanModel?
    var body: some View {
        
        HStack(spacing: 13){
            
            ForEach(artisan!.link){item in
                if item.site == "instagram"{
            InstagramButtonView()
                }
                else if item.site == "e-commerce"{
            ShopButtonView()
                }
                else if item.site == "website"{
            WebSiteButtonView()
                }
                else {
                    Text("No links present")
                }
                
            }
        }.frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

//struct ExternalLinkView_Previews: PreviewProvider {
//    static var previews: some View {
//        ExternalLinkView()
//    }
//}
