//
//  PhaseVideoView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 07/03/22.
//

import SwiftUI

struct PhaseVideoView: View {
    var body: some View {
//        GeometryReader{_ in
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
            
            ZStack{
                Circle()
                    .foregroundColor(Color("gray1"))
                Image(systemName: "video.fill")
                    .foregroundColor(.white)
                
            }.frame(width: 42, height: 42)
        }
        .frame(width: 300, height: 370)
//        }
    }
    
    
}

struct PhaseVideoView_Previews: PreviewProvider {
    static var previews: some View {
        PhaseVideoView()
    }
}
