//
//  WebSiteButtonView.swift
//  LocalArtiSoul
//
//  Created by Emanuele Cimmelli on 17/02/22.
//

import SwiftUI

struct WebSiteButtonView: View {
    @State var link : String
    var body: some View {
        
        
        Link(destination: URL(string: "\(link)")!){

        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 73, height: 53)
                .foregroundColor(Color("gray1"))
                    
            VStack{
                Image(systemName: "globe")
                            .foregroundColor(Color.accentColor)
                            .font(.system(size: 23))
                            .scaledToFill()

                Text("web")
                            .foregroundColor(Color.accentColor)
                            .font(.system(size: 11))
                            .fontWeight(.regular)
                        }
                    }
                }
            
        }
}

//struct WebSiteButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        WebSiteButtonView()
//    }
//}
