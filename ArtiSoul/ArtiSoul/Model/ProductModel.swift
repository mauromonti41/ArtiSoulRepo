//
//  ProductModel.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 15/02/22.
//

import Foundation
import SwiftUI

struct CardModel: Identifiable{
    
    let id: UUID = UUID()
    var descrizione: String
    var image: Image
    var infos : String
}

//= ["My total production time:", "What am I made of:", "How to take care of me:", "How to move me:"]
struct ProductModel: Identifiable{
    
    let id = UUID()
//    var video:
    var name : String
    var cardDetails: [CardModel]
    var artisanId : UUID
    var favorite : Bool = false
    var tag: [Tags]
}
