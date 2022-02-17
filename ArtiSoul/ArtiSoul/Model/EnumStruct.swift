//
//  EnumStruct.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 16/02/22.
//

import Foundation
import SwiftUI


enum Tags: String, CaseIterable, Identifiable{
    case all, Paper, Fabric, Clay, Metals
    var id: Self {self}
}

struct Filters : Identifiable{
    
    let id = UUID()
    let icon: Image
    let name: String
}

//class filtersClassDue : ObservableObject{
    
//    @Published var information : [Filters] = [
//        Filters(name: " Clay"),
//        Filters(name: " Wood"),
//        Filters(name: " Metal"),
//        Filters(name: " Fabric"),
//        Filters(name: " Plastic"),
//        Filters(name: " Paper")
//    ]
    
//}
class filtersClassDue : ObservableObject{
        
    @Published var information : [Filters] = [
        Filters(icon: Image(systemName: "eye.slash"), name: "  Clay"),
        Filters(icon: Image(systemName: "fork.knife"), name: "  Wood"),
        Filters(icon: Image(systemName: "flame"), name: "  Metal"),
        Filters(icon: Image(systemName: "leaf"), name: " Plastic"),
        Filters(icon: Image(systemName: "leaf"), name: " Fabric"),
        Filters(icon: Image(systemName: "leaf"), name: " Paper")
        ]
}
