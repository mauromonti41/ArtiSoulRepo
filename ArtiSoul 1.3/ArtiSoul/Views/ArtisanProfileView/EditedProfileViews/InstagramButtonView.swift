//
//  InstagramButtonView.swift
//  LocalArtiSoul
//
//  Created by Emanuele Cimmelli on 17/02/22.
//

import SwiftUI

struct InstagramButtonView: View {
    
    @State var link : String
    
    var body: some View {
        
        Link(destination: URL(string: "\(link)")!){
            
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 73, height: 53)
                .foregroundColor(Color("gray1"))
            
            VStack(spacing: 0){
                Image("instagramIcon")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 28, height: 28)
                
                Text("instagram")
                    .foregroundColor(Color.accentColor)
                    .font(.system(size: 11))
                    .fontWeight(.regular)
                    
                }

            }
        }
        
    }
}

//struct InstagramButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        InstagramButtonView()
//    }
//}
