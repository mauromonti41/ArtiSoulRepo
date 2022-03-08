//
//  HowToMove.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 07/03/22.
//

import SwiftUI

struct HowToMoveView: View {
    @State var stringa : String = ""
    var body: some View {
        ZStack{
            Color("gray1")
                .ignoresSafeArea()
            GeometryReader{_ in
                VStack{
                    Text("quote1")
                        .fontWeight(.regular)
                        .font(.system(size: 15))
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.leading,16)
                    TextField("Text", text: $stringa)
                        .padding(.top,6)
                        .frame(maxWidth: .infinity , alignment: .leading)
                        .frame(height: 90)
                        .padding(.leading,16)
                        .background(.white)
                    Text("quote2")
                        .fontWeight(.regular)
                        .font(.system(size: 15))
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.top,16)
                        .padding(.leading,16)
                    ProductPhotoView()
                        .padding(.top,6)
                    Button("quote3"){
                        
                    }
                    .padding(.top,16)
                }.padding(.top,25)
            }
        }.padding(.top,50)
    }
}

struct HowToMove_Previews: PreviewProvider {
    static var previews: some View {
        HowToMoveView()
    }
}
