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
    
    let Name:LocalizedStringKey="text 33"
    let Surname:LocalizedStringKey="text 34"
    let Work:LocalizedStringKey="text 35"
    
    var body: some View {
        
        VStack{
            
            HStack{
                Text(Name)
                    .bold()
                    .padding(.trailing,24)
                TextField("", text: $name)
            }
            
            Divider()
               
            HStack{
                Text(Surname)
                    .bold()
                TextField("", text: $surname)
            }
            
            Divider()
            
            HStack{
                Text(Work)
                    .bold()
                    .padding(.trailing,29)
                TextField("", text: $work)
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
