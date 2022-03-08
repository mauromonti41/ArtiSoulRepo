//
//  ProductCardBot.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 17/02/22.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct ProductCardBot: View {
    
    
   @State var description: String
   @State var info: String
    
    var body: some View {
        
        VStack(){
            Text(description)
                .bold()
                .font(.system(size: 17))
//                .padding(.top,5)
//                .padding(.leading,17)
                .frame(maxWidth: .infinity, alignment: .leading)
            
                Text(info)
                    .bold()
                    .font(.system(size: 14))
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
//        .padding(25)
        .frame(width: 325, height: 60)
        .padding(25)
        .background(Color("gray1"))
        .cornerRadius(20, corners: [.bottomLeft, .bottomRight])
//        .frame(width: 325, height: 60)
//        .frame(maxWidth: .infinity,alignment: .leading)
        
//        ZStack(alignment: .top){
//
//            Rectangle()
//                .fill(Color("gray1"))
//                .cornerRadius(20)
//                .frame(width: 376, height: 100)
//
//            Rectangle()
//            .fill(Color("gray1"))
//            .frame(width: 376, height: 50)
//
//
//            VStack(alignment: .leading, spacing: 5.0){
//
//                    Text(info)
//                        .bold()
//                        .font(.system(size: 14))
//                        .foregroundColor(.primary)
//
//
//                    Text(descrizione)
//                        .font(.system(size: 13))
//                        .foregroundColor(.secondary)
//                }
//                .frame(width: 375, height:100)
//
//            }.frame(width: 376, height: 100)
        
    }
}

struct ProductCardBot_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardBot(description: "My total production time:", info: "8 days, which is equivalent Harry Potter Marathon")
    }
}
