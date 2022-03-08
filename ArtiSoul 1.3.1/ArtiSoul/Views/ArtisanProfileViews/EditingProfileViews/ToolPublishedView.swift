//
//  ToolPublishedView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 18/02/22.
//

import SwiftUI

struct ToolPublishedView: View {
    
    @State var productName : String
    let edit : LocalizedStringKey = "text 32"
    var body: some View {
        Button(action:{}){
            HStack{
                Text(edit)
                Text("\(productName)")
            }
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct ToolPublishedView_Previews: PreviewProvider {
    static var previews: some View {
        ToolPublishedView(productName: "vaso")
    }
}
