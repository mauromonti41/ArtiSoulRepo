//
//  ToolAddBarView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 18/02/22.
//

import Foundation
import SwiftUI


struct ToolAddBarView : View{
    
    @State var thingToBeAdded : String
    
    var body: some View{
        
        HStack{
            
            Image(systemName: "plus.circle")
                .resizable()
                .frame(width: 24, height: 24)
                .background(Color.green)
                .clipShape(Circle())
                .foregroundColor(.white)
            
            Text("add \(thingToBeAdded)")
                .foregroundColor(.black)
                
                
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.white)
    }
}

struct ToolAddBarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolAddBarView(thingToBeAdded: "link")
    }
}

