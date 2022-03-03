//
//  EnumStruct.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 16/02/22.
//
import Foundation
import SwiftUI


enum Tags: String, CaseIterable, Identifiable{
    case all, Paper, Fabric, Clay, Metals, Wood, Plastic, Ceramic
    var id: Self {self}
}


struct Filters : Identifiable{
    
    let id = UUID()
//    let icon: Image
    let name: String
    
}

class FiltersClassDue : ObservableObject{
        
    @Published var information : [Filters] = [
        Filters(name: "Clay"),
        Filters(name: "Wood"),
        Filters(name: "Metal"),
        Filters(name: "Plastic"),
        Filters(name: "Fabric"),
        Filters(name: "Paper"),
        Filters(name: "Ceramic")
        ]
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
