//
//  HeaderView.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 16/02/22.
//

import Foundation
import SwiftUI

struct MainView: View {
    
    var body: some View {
        TabView{
            
            ProductView(selectedProduct: ProductModel(name: "Mug",
                                                     
            cardDetails: [
            
            CardModel(descrizione: "15 days, which is equivalent to the first five seasons of Big Bang Theory.", image: Image("Mug1"), infos: "My total production time:"),
            CardModel(descrizione: "Clay, nail varnish", image: Image("Mug2"), infos: "What am I made of:"),
            CardModel(descrizione: "Wash me by hand. Dry me carefully.", image: Image("Mug2"), infos: "How to take care of me:"),
            CardModel(descrizione: "Wrap me in paper that protects me and put me in a box.", image: Image("Mug3"), infos: "How to move me:")], artisanId: UUID(), favorite: false, tag: [.all,.Clay]),
                        
            selectedArtisan: ArtisanModel(idProduct : [UUID()], name : "Elisa", surname : "Castelletta", title: "Ceramista", image: Image("Castelletta"), shortBio : "D"))
                
                .tabItem{
                    Label("Explore", systemImage: "square.on.square")
            }
            ProductView(selectedProduct: ProductModel(name: "Mug",
                                                     
            cardDetails: [
            
            CardModel(descrizione: "15 days, which is equivalent to the first five seasons of Big Bang Theory.", image: Image("Mug1"), infos: "My total production time:"),
            CardModel(descrizione: "Clay, nail varnish", image: Image("Mug2"), infos: "What am I made of:"),
            CardModel(descrizione: "Wash me by hand. Dry me carefully.", image: Image("Mug2"), infos: "How to take care of me:"),
            CardModel(descrizione: "Wrap me in paper that protects me and put me in a box.", image: Image("Mug3"), infos: "How to move me:")], artisanId: UUID(), favorite: false, tag: [.all,.Clay]),
                        
            selectedArtisan: ArtisanModel(idProduct : [UUID()], name : "Elisa", surname : "Castelletta", title: "Ceramista", image: Image("Castelletta"), shortBio : "D"))
                .tabItem{
                    Label("Favourites", systemImage:"heart.fill")
                }
            ProductView(selectedProduct: ProductModel(name: "Mug",
                                                     
            cardDetails: [
            
            CardModel(descrizione: "15 days, which is equivalent to the first five seasons of Big Bang Theory.", image: Image("Mug1"), infos: "My total production time:"),
            CardModel(descrizione: "Clay, nail varnish", image: Image("Mug2"), infos: "What am I made of:"),
            CardModel(descrizione: "Wash me by hand. Dry me carefully.", image: Image("Mug2"), infos: "How to take care of me:"),
            CardModel(descrizione: "Wrap me in paper that protects me and put me in a box.", image: Image("Mug3"), infos: "How to move me:")], artisanId: UUID(), favorite: false, tag: [.all,.Clay]),
                        
            selectedArtisan: ArtisanModel(idProduct : [UUID()], name : "Elisa", surname : "Castelletta", title: "Ceramista", image: Image("Castelletta"), shortBio : "D"))
                .tabItem{
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

struct MainView_Preview: PreviewProvider {
    static var previews: some View {
        MainView()
//            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
