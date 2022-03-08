//
//  EditedProfileView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 24/02/22.
//

import SwiftUI

struct EditedProfileView: View {
    
//    @Binding var name : String
//    @Binding var surname : String
//    @Binding var work : String
    
    @Binding var artisan : ArtisanModel
    
//    @Binding var linkToBeAdded : String
//    @Binding var creationToBeAdded : String
//    
//    @Binding var addNewLink : Bool
//    @Binding var addNewCreation : Bool
    @Binding var profileEditingAllowed : Bool
    
    let Creations : LocalizedStringKey = "text 15"
    let PUBLISHED : LocalizedStringKey = "text 17"
    let Edit : LocalizedStringKey = "text 21"
    let WORKINPROGRESS : LocalizedStringKey = "WORKINPROGRESS"
    
    var body: some View {
        
    
            
            VStack{
            
                ArtisanProfileImageView(profileImage: $artisan.profileImage,profileEditingAllowed: $profileEditingAllowed)
                    .padding(.top, 18)
                    .padding(.bottom, 22)
                
              ScrollView{
                    
                    Text("Links")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 21))
                        .padding(.leading,16)
                        .padding(.top,41)
                        .padding(.bottom, 10)
                    
                    ExternalLinkView()
                        .padding(.leading,16)
                        .padding(.top,14.5)
                    
                    Text(Creations)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 21))
                        .padding(.leading,16)
                        .padding(.top,28.5)
                        .padding(.bottom, 10)
                    
//                    NavigationLink(destination: ProductCreationView()){
//                        ToolAddBarView(thingToBeAdded: "creation")
//                    }
//                    .padding(.leading,16)
//                    .padding(.vertical,10)
//                    .background(.white)
                    
                    Text(WORKINPROGRESS)
                        .bold()
                        .font(.system(size: 12))
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,16)
                        .padding(.top,19)
                        .padding(.bottom, 10)
                    
//                    AddedBarView(item: artisan.name )
//                        .padding(.top,8)
//                        .padding(.leading,16)
                    
                    Text(PUBLISHED)
                        .bold()
                        .font(.system(size: 12))
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,16)
                        .padding(.top,22)
                        .padding(.bottom, 10)
                    
//                    VStack(spacing:0){
//                        AddedBarView(item: artisan.name )
//                        AddedBarView(item: artisan.name )
//                    }
//                        .padding(.top,8)
//                        .padding(.leading,16)
                }
                .toolbar{
                    ToolbarItem(placement : .navigationBarTrailing){
                        
                            Button(Edit){
                            profileEditingAllowed.toggle()
                            }
                    }
                }
            }
            .navigationTitle("\(artisan.name) \(artisan.surname)")
    }
}

//struct EditedProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditedProfileView(name: "Claudio", surname: "Pulicati", work: "Ceramist", linkToBeAdded: "instagram",creationToBeAdded: "vaso")
//    }
//}
