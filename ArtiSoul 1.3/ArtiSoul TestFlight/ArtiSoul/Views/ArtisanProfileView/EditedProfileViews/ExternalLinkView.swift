//
//  ExternalLinkView.swift
//  LocalArtiSoul
//
//  Created by Emanuele Cimmelli on 17/02/22.
//

import SwiftUI

struct ExternalLinkView: View {
    @State var artisan : ArtisanModel?
    @State var defaultArtisan : ArtisanModel = ArtisanModel(name: "", surname: "", title: "", profileImage: Image("defaultImage"), link: [Links(site: "", URL: "")], access: AccessModel(email: "", password: ""))
    var body: some View {
        
        HStack(spacing: 13){
            
            ForEach(artisan?.link ?? defaultArtisan.link){item in
                if item.site == "instagram"{
                    InstagramButtonView(link : item.URL)
                }
                else if item.site == "shop"{
                    ShopButtonView(link: item.URL)
                }
                else if item.site == "website"{
                    WebSiteButtonView(link: item.URL)
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
