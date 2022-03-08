//
//  ExploreProfileView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 02/03/22.
//
import SwiftUI

struct ExploreProfileView: View {
    

    
    @State var artisan : ArtisanModel
//    @EnvironmentObject var artisanViewModel : ArtisanViewModel
    @EnvironmentObject var productViewModel : ProductViewModel
    @State var profileEditingAllowed = false
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        
    
            
            VStack{
            
                ArtisanProfileImageView(image: artisan.profileImage,profileImage: $artisan.profileImage, profileEditingAllowed: $profileEditingAllowed)
                    .padding(.top, 18)
                    .padding(.bottom, 11)
                
              
                
                ScrollView{
                    
                    
                    Text("Links")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 21))
                        .padding(.leading,16)
                        .padding(.top,41)
                        .padding(.bottom, 10)
                    
                    ExternalLinkView(artisan: artisan)
                        .padding(.leading,16)
                        .padding(.top,14.5)
                    
                    Text("Creations")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 21))
                        .padding(.leading,16)
                        .padding(.top,41)
                        .padding(.bottom, 10)
                    LazyVGrid(columns: columns, spacing: 7){
                    ForEach(productViewModel.products.filter{$0.artisanName == artisan.name}){item in
                        
                        ExploreProfileTileView(productImage: item.image1, productName: item.name)
                        
                        }
                    }.padding(.horizontal,16)
                        .padding(.top,18)
                    
                 
                    
                    
                   
                }
            }
            .navigationTitle("\(artisan.name) \(artisan.surname)")
        
    }
}
