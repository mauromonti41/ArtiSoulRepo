//
//  ToolAddedBarView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 18/02/22.
//

import SwiftUI

struct AddedBarView: View {
    
    @State var item : String
    
    var body: some View {
       
            Text("\(item)")
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, maxHeight: 47, alignment: .leading)
                .background(Color("gray1"))
    }
}

struct ToolAddedBarView_Previews: PreviewProvider {
    
    @State var thingToBeAdded :String = "link"
    
    static var previews: some View {
        AddedBarView(item: "item")
    }
}
