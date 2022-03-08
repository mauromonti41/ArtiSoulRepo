//
//  ArtisanProfileImageView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 18/02/22.
//

import SwiftUI

struct ArtisanProfileImageView: View {
    
//    @Binding var showingImagePicker : Bool
    
    //    FOR IMAGE PICKER
        
        @State var image : Image?
        @State private var showingImagePicker = false
        @State private var inputImage: UIImage?
        @State private var imageIsPresent : Bool = false
    
        @Binding var profileImage : Image
        @Binding var profileEditingAllowed : Bool
    
        let Edit : LocalizedStringKey = "text 21"
    
    var body: some View {
        
        VStack{
            
            if image == nil{
                 Image("defaultImage")
                .resizable()
                .scaledToFill()
                .background(.black)
                .clipShape(Circle())
                .frame(width: 187, height: 187)
            }
            else {
                image?
               .resizable()
               .scaledToFill()
               .background(.black)
               .clipShape(Circle())
               .frame(width: 187, height: 187)
            }
//            Button(action : {showingImagePicker.toggle() ;  if imageIsPresent != true{imageIsPresent.toggle()}}){
//                Text("Edit")
//            }
            if profileEditingAllowed == true{
                Button(action : {showingImagePicker.toggle() ;  if image != nil && image != Image("defaultImage"){imageIsPresent.toggle()} else {return}}){
                Text(Edit)
                }
            }
        }.onChange(of: inputImage) { _ in loadImage() }
        .sheet(isPresented: $showingImagePicker) {
            ImagePicker(image: $inputImage)
    }

    }
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
        profileImage = image!
    }
}

//struct ArtisanProfileImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        ArtisanProfileImageView()
//    }
//}
