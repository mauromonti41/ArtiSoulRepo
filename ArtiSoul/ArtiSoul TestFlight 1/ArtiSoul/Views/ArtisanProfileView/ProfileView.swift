//
//  ProfileView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 21/02/22.
//

import SwiftUI

struct ProfileView: View {
    
    @State var profileIsCreated = false
    
    var body: some View {
        
        if profileIsCreated == false{
            NewProfileView(profileIsCreated: $profileIsCreated)
        }
        
        else{
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
