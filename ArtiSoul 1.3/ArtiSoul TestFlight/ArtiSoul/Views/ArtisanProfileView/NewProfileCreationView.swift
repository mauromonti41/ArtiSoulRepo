//
//  NewProfileCreationView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 26/02/22.
//

import SwiftUI

struct NewProfileCreationView: View {
    @EnvironmentObject var artisanViewModel : ArtisanViewModel
    @Binding var artisan : ArtisanModel
    @Binding var profileEditingAllowed : Bool
    @Binding var profileIsCreated : Bool 
    var body: some View {
        EditingProfileView(artisan: $artisan, profileEditingAllowed: $profileEditingAllowed, profileIsCreated: $profileIsCreated)
    }
}

//struct NewProfileCreationView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewProfileCreationView()
//    }
//}
