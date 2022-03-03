//
//  ProfileView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 24/02/22.
//

import SwiftUI

struct ProfileView: View {
    
//    @State var name : String = ""
//    @State var surname : String = ""
//    @State var work : String = ""
    
    @EnvironmentObject var artisanViewModel : ArtisanViewModel
    @State var artisan : ArtisanModel
//    @State var linkToBeAdded : String = ""
//    @State var creationToBeAdded : String = ""
//
//    @State var addNewLink : Bool = false
//    @State var addNewCreation : Bool = false
    
    @State var profileEditingAllowed = false
    
    @State var profileIsCreated = false
    
    var body: some View {
        
        if profileIsCreated == false{
            NewProfileView(profileIsCreated: $profileIsCreated, profileEditingAllowed: $profileEditingAllowed, artisanAccessValues: $artisan.access)
        }
        else{
            
            if profileEditingAllowed && profileIsCreated {
                
                EditingProfileView(artisan: $artisan, profileEditingAllowed: $profileEditingAllowed, profileIsCreated: $profileIsCreated)
            }
            else if !profileIsCreated && profileEditingAllowed{
                NewProfileCreationView(artisan: $artisan, profileEditingAllowed: $profileEditingAllowed, profileIsCreated: $profileIsCreated)
                }
            else {
                EditedProfileView(artisan: artisan, profileEditingAllowed: $profileEditingAllowed)
                }
            }
    }
}

//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileView()
//    }
//}
