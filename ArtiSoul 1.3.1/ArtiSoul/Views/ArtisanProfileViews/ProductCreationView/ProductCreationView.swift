//
//  ProductCreationView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 20/02/22.
//

import SwiftUI

struct ProductCreationView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @EnvironmentObject var productViewModel : ProductViewModel
    @EnvironmentObject var filters : FiltersClassDue
    //    @State var artisan : ArtisanModel
    @State var newProduct : ProductModel
    @State var selectedMaterial : String = ""
    
    let product_howMade : LocalizedStringKey = "text 37"
    let product_howCare : LocalizedStringKey = "text 38"
    let product_howMove : LocalizedStringKey = "text 39"
    let product_totProd : LocalizedStringKey = "text 36"
    let text33 : LocalizedStringKey = "text 33" //name
    let text55 : LocalizedStringKey = "text 55" //new creation
    let text56 : LocalizedStringKey = "text 56" //material
    let text57 : LocalizedStringKey = "text 57" //FOTO
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("gray1")
                    .ignoresSafeArea()
                GeometryReader{_ in
        VStack(spacing: 25){
            
            HStack{
                Text(text33)
                    .padding(.trailing,24)
                TextField("Text", text: $newProduct.name)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(height: 44)
            .padding(.leading,16)
            .background(.white)
            
            NavigationLink(destination: MaterialPickerView(material: $newProduct.material,selectedMaterial: $selectedMaterial)){
                HStack{
                    Text(text56)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 16)
                    HStack(spacing: 1){
                        Text(filters.selectedMaterialCheck(selectedMaterial).localizedName)
                    Image(systemName: "chevron.right")
                    }.foregroundColor(.secondary)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 5)
                }
                    .frame(height: 54)
                    .background(.white)
            }
            
            VStack{
                Text("VIDEO")
                    .font(.system(size: 12))
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading,16)
                    .padding(.bottom, 7)
                NavigationLink(destination: MyTotalProductionTimeView()){
                    HStack{
                        Text(product_totProd)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 16)
                        Image(systemName: "chevron.right")
                            .foregroundColor(.secondary)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding(.trailing, 5)
                    }
                        .frame(height: 54)
                        .background(.white)
                }
            }
            
            VStack(spacing:0){
                Text(text57)
                    .font(.system(size: 12))
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading,16)
                    .padding(.bottom, 7)
                
                NavigationLink(destination: WhatAmIMadeOfView()){
                    HStack{
                        Text(product_howMade)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 16)
                        Image(systemName: "chevron.right")
                            .foregroundColor(.secondary)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding(.trailing, 5)
                    }
                    .frame(height: 54)
                    .background(.white)
                }
                Divider()
                NavigationLink(destination: HowToCareView()){
                    HStack{
                        Text(product_howCare)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 16)
                        Image(systemName: "chevron.right")
                            .foregroundColor(.secondary)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding(.trailing, 5)
                    }
                        .frame(height: 54)
                        .background(.white)
                }
                Divider()
                NavigationLink(destination: HowToMoveView()){
                    HStack{
                        Text(product_howMove)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 16)
                        Image(systemName: "chevron.right")
                            .foregroundColor(.secondary)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding(.trailing, 5)
                    }
                        .frame(height: 54)
                        .background(.white)
                }
            }
            
        }
//        .padding(.bottom, 200)
        .padding(.top,25)
        .navigationTitle(text55)
        .navigationBarTitleDisplayMode(.inline)
                }
        }
            .padding(.top, 50)
            .toolbar{
            ToolbarItem(placement: .navigationBarTrailing){
                Button("Done"){
                    
                }
            }
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Button("Close"){
                    dismiss()
                }
            }
        }
        }
    }
}

//struct ProductCreationView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        ProductCreationView()
//    }
//}

