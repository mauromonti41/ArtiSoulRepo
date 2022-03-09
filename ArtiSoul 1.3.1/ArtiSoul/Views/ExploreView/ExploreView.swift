//
//  ContentView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 07/02/22.
//

import SwiftUI
import Foundation


struct ExploreView: View {
    @EnvironmentObject var productViewModel : ProductViewModel
    @StateObject private var filters = FiltersClassDue()
    @State private var searchText = ""
    let explore : LocalizedStringKey = "text 10"
    let Search : LocalizedStringKey = "text 13"
    let Try : LocalizedStringKey = "text 14"
    @State var selectedProducts : String = ""
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View{
        
        NavigationView{
        
            ScrollView(showsIndicators: false){
                LazyVGrid(columns: columns, spacing: 7){

        //            Section{
                    ForEach(productViewModel.filterProducts(selectedProducts)){ item in

        //                        Richiamo CardView + parametri
                            
                            let variableItem : ProductModel = ProductModel(name: item.name, material: item.material, artisanName: item.artisanName,artisanSurname: item.artisanSurname, whatMadeOf: item.whatMadeOf, howToCare: item.howToCare, howToMove: item.howToMove, image1: item.image1, image2: item.image2, image3: item.image3, image4: item.image4, totalProductionTime: item.totalProductionTime, title: item.title,profileImage: item.profileImage)
                               
                            NavigationLink(destination: ProductView(product: variableItem)){
                                TileView(productImage: item.image1, productName: item.name, artisanName: item.artisanName, artisanSurname: item.artisanSurname)
                                .listRowBackground(Color.clear)
                                }
                            }
        //               }
        //            }
                }
                .padding(.horizontal, 16)
            }
            
            .searchable(text: $selectedProducts, prompt: Search) {
                Text(Try)
                    .foregroundColor(.accentColor)
                    .font(.title2)
                    .fontWeight(.bold)
                //                        .foregroundColor(Color("AccentColor"))
                
                
                // filter list by moood
                ForEach(filters.materials) { item in
                    if item.name != ""{
                        Button(action: {selectedProducts = item.name}){
                        Text(item.localizedName)
                                .foregroundColor(.black)
                        }
                        .frame(maxWidth : .infinity, alignment : .leading)
                        .padding(.leading,16)
                    }
                }
            }
            .navigationTitle(explore)
        }
    }
}



struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
