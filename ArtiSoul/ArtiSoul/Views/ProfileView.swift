//
//  ProfileView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 15/02/22.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var image : Image?
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    
    @StateObject var product = Products(product: [])
    @State private var defaultImage : Image = Image("defaultImage")
    
    
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.secondary)
                    
                    
                    image?
                        .resizable()
                        .scaledToFit()
                }
                .frame(width: 300, height: 400)
                .padding()
                
                Button(action: {showingImagePicker=true}){
                    Text("Select Image")
                    
                }
            }
            .navigationTitle("Profile")
            .onChange(of: inputImage) { _ in loadImage() }
            .sheet(isPresented: $showingImagePicker) {
                ImagePicker(image: $inputImage)
            }
        }
    }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
//        var newProduct = product.addProduct("Default", image ?? defaultImage)
//        product.append(newProduct)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
