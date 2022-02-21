//
//  TextInfoView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 18/02/22.
//

import SwiftUI

struct TextInfoView: View {
    
    @Binding var name :    String
    @Binding var surname : String
    @Binding var work :    String
    
    var body: some View {
        
        VStack{
            
            HStack{
                Text("Name")
                    .bold()
                    .padding(.trailing,24)
                TextField("Your name...", text: $name)
            }
            
            Divider()
               
            HStack{
                Text("Surname")
                    .bold()
                TextField("Your name...", text: $surname)
            }
            
            Divider()
            
            HStack{
                Text("Work")
                    .bold()
                    .padding(.trailing,29)
                TextField("Your name...", text: $work)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(.white)
    }
}

//struct TextInfoView_Previews: PreviewProvider {
//    static var previews: some View {
//        TextInfoView(name: "Claudio", surname: "Pulicati", work: "Ceramist")
//    }
//}
