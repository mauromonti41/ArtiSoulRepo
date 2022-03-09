//
//  MaterialPickerView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 05/03/22.
//

import SwiftUI

struct MaterialPickerView: View {
    
    @EnvironmentObject var filters : FiltersClassDue
    @Binding var material : String
    @Binding var selectedMaterial : String
    let text56 : LocalizedStringKey = "text 56" //material
    var body: some View {
        
        ZStack(){
            Color("gray1")
                .ignoresSafeArea()
            GeometryReader{_ in
        VStack{
            
            List{
                ForEach(filters.materials){ item in
                    if item.name != "" {
                        Button(action: {material =  item.name; selectedMaterial = item.name}){
                        HStack{
                            Text(item.localizedName)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            if filters.isChecked(productMaterial: material, material: item.name){
                       Image(systemName: "checkmark")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            }
                        }
                    }
                }
            }
        }
    }   .background(Color("gray1"))
        
        .navigationTitle(text56)
            }
        }
        .padding(.top,50)
//            .toolbar{
//                ToolbarItem(placement: .navigationBarLeading){
//                    Image(systemName: "chevron.left")
//                }
//            }
    }
}

//struct Checkmark: View {
//
//   @State var checked: Bool = false
//
//    func checkedToggle(){
//        checked.toggle()
//    }
//
//    var body : some View {
//
//            if checked {
//                    Image(systemName: "checkmark")
//                        .frame(maxWidth: .infinity, alignment: .trailing)
//            }
//    }
//}
//struct MaterialPickerView_Previews: PreviewProvider {
//    static var previews: some View {
//        MaterialPickerView()
//    }
//}
