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
    
    @State var artisan : ArtisanModel?
    
//    @Binding var linkToBeAdded : String
//    @Binding var creationToBeAdded : String
//    
//    @Binding var addNewLink : Bool
//    @Binding var addNewCreation : Bool
    @Binding var profileEditingAllowed : Bool
    
    var body: some View {
        
    
            
            VStack{
            
                ArtisanProfileImageView(profileEditingAllowed: $profileEditingAllowed)
                    .padding(.top, -40)
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
                    
                    Text("Creations")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 21))
                        .padding(.leading,16)
                        .padding(.top,41)
                        .padding(.bottom, 10)
                    
                    NavigationLink(destination: ProductCreationView()){
                        ToolAddBarView(thingToBeAdded: "creation")
                    }
                    .padding(.leading,16)
                    .padding(.vertical,10)
                    .background(.white)
                    
                    
                    Text("PUBLISHED")
                        .bold()
                        .font(.system(size: 12))
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,16)
                        .padding(.top,22)
                        .padding(.bottom, 10)
                    
                    
                   
                }
                .toolbar{
                    ToolbarItem(placement : .navigationBarTrailing){
                        
                            Button("Edit"){
                            profileEditingAllowed.toggle()
                            }
                        
                    }
                }
            }
            .navigationTitle("\(artisan!.name) \(artisan!.surname)")
        
    }
}

//struct EditedProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditedProfileView(name: "Claudio", surname: "Pulicati", work: "Ceramist", linkToBeAdded: "instagram",creationToBeAdded: "vaso")
//    }
//}
