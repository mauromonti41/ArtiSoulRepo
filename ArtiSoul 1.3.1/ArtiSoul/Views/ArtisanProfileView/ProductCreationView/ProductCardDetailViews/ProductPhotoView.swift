//
//  ProductPhotoView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 07/03/22.
//

import SwiftUI

struct ProductPhotoView: View {
    var body: some View {
//        GeometryReader{geometry in
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
            
            ZStack{
                Circle()
                    .foregroundColor(Color("gray1"))
                Image(systemName: "camera.fill")
                    .foregroundColor(.white)
                
            }.frame(maxWidth: 42, maxHeight: 42)
        }
//        }
    }
}

struct ProductPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        ProductPhotoView()
    }
}
