//
//  ToolAddedBarView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 18/02/22.
//

import SwiftUI

struct ToolAddedBarView: View {
    
    @State var thingToBeAdded : String
    @State var newItem : String
    
    var body: some View {
        HStack{
            
            Image(systemName: "minus.circle")
                .resizable()
                .frame(width: 24, height: 24)
                .background(Color.red)
                .clipShape(Circle())
                .foregroundColor(.white)
               
            
            TextField("add new \(thingToBeAdded)", text: $newItem)
                .foregroundColor(.black)
        }

        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.white)
        
    }
}

struct ToolAddedBarView_Previews: PreviewProvider {
    
    @State var thingToBeAdded :String = "link"
    
    static var previews: some View {
        ToolAddedBarView(thingToBeAdded: "link", newItem: "new link")
    }
}
