//
//  TextFieldModel.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 26/02/22.
//

import Foundation
import SwiftUI

struct TextFieldModel: TextFieldStyle {
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
        .padding(10)
        .background(
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .stroke(Color.black, lineWidth: 1)
                .frame(width: 383, height: 61)
        ).padding()
    }
}
