//
//  ProfileView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 17/02/22.
//

import SwiftUI

struct EditingProfileView: View {
    
    //    @Binding var name : String
    //    @Binding var surname : String
    //    @Binding var work : String
    
    @Binding var artisan : ArtisanModel
    @EnvironmentObject var artisanViewModel : ArtisanViewModel
    @EnvironmentObject var productViewModel : ProductViewModel
    
    //    @Binding var linkToBeAdded : String
    //    @Binding var creationToBeAdded : String
    //
    //    @Binding var addNewLink : Bool
    //    @Binding var addNewCreation : Bool
    
    @Binding var profileEditingAllowed : Bool
    @Binding var profileIsCreated : Bool
    
    @State var defaultText = "default"
    var body: some View {
        
        
        
        VStack{
            
            ArtisanProfileImageView(profileEditingAllowed: $profileEditingAllowed)
                .padding(.top, -40)
                .padding(.bottom, 22)
            
            
            
            ScrollView{
                
                TextInfoView(name: $artisan.name , surname: $artisan.surname , work: $artisan.title)
                    .background(.white)
                
                Text("Links")
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 21))
                    .padding(.leading,16)
                    .padding(.top,41)
                    .padding(.bottom, 10)
                
                Button(action:{}){
                    ToolAddBarView(thingToBeAdded: "link")
                }
                .padding(.leading,16)
                .padding(.vertical,10)
                .background(.white)
                
                Text("Creations")
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 21))
                    .padding(.leading,16)
                    .padding(.top,41)
                    .padding(.bottom, 10)
                
                NavigationLink(destination: ProductCreationView()){
                    Text("add new creation")
                        .frame(maxWidth: .infinity, alignment: .leading)
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
                ToolbarItem(placement: .navigationBarTrailing){
                    //                    if !profileIsCreated && profileEditingAllowed{
                    //                        NavigationLink(destination: EditedProfileView(artisan: artisan, profileEditingAllowed: $profileEditingAllowed)){
                    //                            Button("Done"){
                    //                                artisanViewModel.artisans.append(artisan)
                    //                                profileIsCreated.toggle()
                    //                                profileEditingAllowed.toggle()
                    //                            }
                    //                        }
                    //                    }
                    //                    else {
                    //                        NavigationLink(destination: EditedProfileView(artisan: artisan, profileEditingAllowed: $profileEditingAllowed)){
                    //                            Button("Done"){
                    //                                profileEditingAllowed.toggle()
                    //                            }
                    //                        }
                    //                    }
                    
//                    NavigationLink(destination: EditedProfileView(artisan: artisan, profileEditingAllowed: $profileEditingAllowed)){
                   
                        Button("Done"){
                            if  !profileIsCreated && profileEditingAllowed{
                                artisanViewModel.artisans.append(artisan)
                                profileIsCreated.toggle()
                                profileEditingAllowed.toggle()
                            }
                            else if profileIsCreated && profileEditingAllowed{
                                profileEditingAllowed.toggle()
                            }
                        }
//                    }
                    
                }
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Cancel"){
                        
                    }
                }
            }
        }
        .background(Color("gray1"))
        
    }
}

//struct EditingProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditingProfileView(name: "Claudio", surname: "Pulicati", work: "Ceramist", linkToBeAdded: "instagram",creationToBeAdded: "vaso")
//    }
//}
