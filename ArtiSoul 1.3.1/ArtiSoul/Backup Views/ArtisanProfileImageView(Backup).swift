//
//  ArtisanProfileImageView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 18/02/22.
//

//import SwiftUI
//
//struct ArtisanProfileImageView: View {
//    
////    @Binding var showingImagePicker : Bool
//    
//    //    FOR IMAGE PICKER
//        
//        @State private var image : Image?
//        @State private var showingImagePicker = false
//        @State private var inputImage: UIImage?
//        @State private var imageIsPresent : Bool = false
//    
//    var body: some View {
//        
//        VStack{
//            
//            if imageIsPresent == false{
//                 Image("defaultImage")
//                .resizable()
//                .scaledToFill()
//                .background(.black)
//                .clipShape(Circle())
//                .frame(width: 187, height: 187)
//            }
//            else {
//                image?
//               .resizable()
//               .scaledToFill()
//               .background(.black)
//               .clipShape(Circle())
//               .frame(width: 187, height: 187)
//            }
//            Button(action : {showingImagePicker.toggle() ;  if imageIsPresent != true{imageIsPresent.toggle()}}){
//                Text("Edit")
//            }
//        }.onChange(of: inputImage) { _ in loadImage() }
//        .sheet(isPresented: $showingImagePicker) {
//            ImagePicker(image: $inputImage)
//    }
//
//    }
//    func loadImage() {
//        guard let inputImage = inputImage else { return }
//        image = Image(uiImage: inputImage)
//        }
//}

//struct ArtisanProfileImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        ArtisanProfileImageView()
//    }
//}
