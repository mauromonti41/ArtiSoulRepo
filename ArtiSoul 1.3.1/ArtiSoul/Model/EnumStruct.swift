//
//  EnumStruct.swift
//  ArtiSoul
//
//  Created by Pierluigi Iacono on 16/02/22.
//
import Foundation
import SwiftUI


enum Tags: String, CaseIterable, Identifiable{
    case all, Paper, Fabric, Clay, Metals, Wood, Plastic
    var id: Self {self}
}


struct Material : Identifiable{
    
    let id = UUID()
//    let icon: Image
    let name: String
    let localizedName : LocalizedStringKey
}

//class FiltersClassDue : ObservableObject{
//
//    @Published var materials: [Material] = [
//        Material(name: "Clay"),
//        Material(name: "Wood"),
//        Material(name: "Metal"),
//        Material(name: "Plastic"),
//        Material(name: "Fabric"),
//        Material(name: "Paper")
//        ]
//
//    func isChecked(productMaterial: String, material: String) -> Bool{
//        if productMaterial == material{
//        return true
//    }
//        else{
//            return false
//        }
//
//}
//}
class FiltersClassDue : ObservableObject{
    
    @Published var materials : [Material]
    
    init(text0 : LocalizedStringKey = "text 0",
         text1 : LocalizedStringKey = "text 1",
         text2 : LocalizedStringKey = "text 2",
         text3 : LocalizedStringKey = "text 3",
         text4 : LocalizedStringKey = "text 4",
         text5 : LocalizedStringKey = "text 5",
         text6 : LocalizedStringKey = "text 6",
         
         name0 : String = "",
         name1 : String = "Clay",
         name2 : String = "Wood",
         name3 : String = "Metal",
         name4 : String = "Plastic",
         name5 : String = "Fabric",
         name6 : String = "Paper"){
        
        self.materials=[
        Material(name: name0, localizedName: text0),
        Material(name: name1, localizedName: text1),
        Material(name: name2, localizedName: text2),
        Material(name: name3, localizedName: text3),
        Material(name: name4, localizedName: text4),
        Material(name: name5, localizedName: text5),
        Material(name: name6, localizedName: text6)
        ]
        
    }
        func isChecked(productMaterial: String, material: String) -> Bool{
                if productMaterial == material{
                return true
            }
                else{
                    return false
                }
        }
    
    func selectedMaterialCheck(_ materialName: String) -> Material{
        if let index = materials.firstIndex(where: {$0.name == materialName}){
            return materials[index]
        }else{return materials[0]}
    }
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
