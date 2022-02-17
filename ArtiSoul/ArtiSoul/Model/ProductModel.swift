//
//  ProductModel.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 15/02/22.
//

import Foundation
import SwiftUI

struct Productinfo: Identifiable{
    
    let id = UUID()
//    var video:
    var name: String
    var artisanId : UUID
    var descrizione: [String] = []
    var image: [Image] 
    var favorite : Bool = false
    var tag: [Tags]
}
