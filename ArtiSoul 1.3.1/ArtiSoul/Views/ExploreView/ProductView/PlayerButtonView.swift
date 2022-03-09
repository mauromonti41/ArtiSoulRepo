//
//  PlayerView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 09/03/22.
//

import SwiftUI

struct PlayerButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(.white)
                .opacity(10)
       Image(systemName: "play.fill")
                .foregroundColor(.accentColor)
        }
        .frame(width: 50, height: 50)
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerButtonView()
    }
}
