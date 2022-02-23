//
//  ProfileCardView.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 17/02/22.
//

import SwiftUI


struct ProfileCardView: View {

    @State var name : String
    @State var title : String
    @State var profileImage : String
    
    var body: some View {
        
//        NavigationLink(destination: ProfileView(artisan: ArtisanInfo )) {
        ZStack{
        
            RoundedRectangle(cornerRadius: 15)
                .fill(Color("gray1"))
                .frame(width: 392, height: 60)
            
            HStack(spacing: 50){
                
                Image(profileImage)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .offset(x: -50, y: 0)
                
                VStack(alignment: .leading){
            
                    Text("\(name)")
                            .fontWeight(.medium)
                            .font(.system(size: 14))
                .offset(x: -80, y: 0)
                
                    Text("\(title)")
                        .fontWeight(.light)
                            .font(.system(size: 12))
                            .offset(x: -80, y: 0)
                }
//                .offset(x: 0, y: 0)
            
            Image(systemName: "control")
                    .resizable()
                    .rotationEffect(.degrees(90))
                    .frame(width:17, height: 9)
                    .offset(x: 50, y: 0)
            }
//        }
        }
    }
}

//struct ProfileCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileCardView(artisan: ArtisanModel(name : "Claudio Pulicati", title: "Ceramist", profileImage: Image("Pulicati"), shortBio : "D"))
//    }
//}

