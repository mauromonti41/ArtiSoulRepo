//
//  ProfileView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 17/02/22.
//

import SwiftUI

struct EditingProfileView: View {
    
    @State var name : String
    @State var surname : String
    @State var work : String
    
    @StateObject var artisanViewModel = ArtisanViewModel()
    
    @State var linkToBeAdded : String
    @State var creationToBeAdded : String
    
    @State var addNewLink : Bool = false
    @State var addNewCreation : Bool = false
    
    
    
    var body: some View {
        
        NavigationView{
            
            VStack{
            
                ArtisanProfileImageView()
                    .padding(.top, -40)
                    .padding(.bottom, 22)
                
                TextInfoView(name: $name, surname: $surname, work: $work)
                    .background(.white)
              
                
                ScrollView{
                    
                    Text("Links")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 21))
                        .padding(.leading,16)
                        .padding(.top,41)
                        .padding(.bottom, 10)
                    
                    Button(action:{addNewLink = true}){
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
                    
                    
                    ToolPublishedView(productName: "Sia")
                        .padding(.leading,16)
                        .padding(.vertical,10)
                        .background(.white)
                    
                    ToolPublishedView(productName: "Febe")
                        .padding(.leading,16)
                        .padding(.vertical,10)
                        .background(.white)
                }
                
                .toolbar{
                    ToolbarItem(placement : .navigationBarTrailing){
                        Button("Done"){
                        }
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
}

struct EditingProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditingProfileView(name: "Claudio", surname: "Pulicati", work: "Ceramist", linkToBeAdded: "instagram",creationToBeAdded: "vaso")
    }
}
