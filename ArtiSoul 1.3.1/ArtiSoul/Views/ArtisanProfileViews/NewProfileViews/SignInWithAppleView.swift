//
//  SignInWithAppleView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 04/03/22.
//

import SwiftUI

struct SignInWithAppleView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 383, height: 50.0)
                .foregroundColor(Color.accentColor)
            
            Text("Sign in with Apple")
                .fontWeight(.semibold)
                .font(.system(size: 17))
                .foregroundColor(Color.white)
            
            }
    }
}

struct SignInWithAppleView_Previews: PreviewProvider {
    static var previews: some View {
        SignInWithAppleView()
    }
}

