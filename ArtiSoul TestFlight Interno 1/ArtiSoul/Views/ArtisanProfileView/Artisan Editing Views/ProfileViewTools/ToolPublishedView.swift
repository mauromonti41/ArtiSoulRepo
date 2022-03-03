//
//  ToolPublishedView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 18/02/22.
//

import SwiftUI

struct PublishedCreationView: View {
    
    @State var productName : String
    
    var body: some View {
        Button(action:{}){
                Text("edit \(productName)")
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct ToolPublishedView_Previews: PreviewProvider {
    static var previews: some View {
        PublishedCreationView(productName: "vaso")
    }
}
