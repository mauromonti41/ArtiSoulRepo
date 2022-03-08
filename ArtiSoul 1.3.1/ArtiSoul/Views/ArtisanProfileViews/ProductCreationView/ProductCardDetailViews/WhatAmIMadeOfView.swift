//
//  WhatAmIMadeOfView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 07/03/22.
//

import SwiftUI

struct WhatAmIMadeOfView: View {
    //Product creation - Photo views
    
    //HowAmIMade
    
    let title1 : LocalizedStringKey = "title_WhatAmIMadeOf"
    let quote1 : LocalizedStringKey = "quote_briefDescription1"
    let quote2 : LocalizedStringKey = "quote_photoMaterial"
    let word1 : LocalizedStringKey =  "editPhoto"
    
    @State var stringa : String = ""
    
    @State var image : Image?
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    
    var body: some View {
        GeometryReader{geometry in
            ZStack{
                Color("gray1")
                    .ignoresSafeArea()
                GeometryReader{_ in
                    VStack{
                        Text(quote1)
                            .fontWeight(.regular)
                            .font(.system(size: 15))
                            .frame(maxWidth: .infinity,alignment: .leading)
                            .padding(.leading,16)
                        TextField("Text", text: $stringa)
                            .padding(.top,6)
                            .frame(maxWidth: .infinity , alignment: .leading)
                            .frame(height: 90)
                            .padding(.leading,16)
                            .background(.white)
                        Text(quote2)
                            .fontWeight(.regular)
                            .font(.system(size: 15))
                            .frame(maxWidth: .infinity,alignment: .leading)
                            .padding(.top,16)
                            .padding(.leading,16)
                        if image == nil{
                            Button(action: {showingImagePicker.toggle()}){
                                ProductPhotoView()
                                    .frame(width: geometry.size.width * 0.7, height: geometry.size.width * 0.9)
                                    .padding(.top,6)
                            }
                        }
                        else{
                            image?
                                .resizable()
                                .frame(width: geometry.size.width * 0.7, height: geometry.size.width * 0.9)
                                .scaledToFill()
                                .cornerRadius(20)
                                .padding(.top,6)
                            
                            Button(word1){
                                showingImagePicker.toggle();
                            }
                            .padding(.top,16)
                        }
                    }.padding(.top,25)
                }
            }.padding(.top,50)
                .onChange(of: inputImage) { _ in loadImage() }
                .sheet(isPresented: $showingImagePicker) {
                    ImagePicker(image: $inputImage)}
                .navigationTitle(title1)
        }
    }
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
    }
}

struct WhatAmIMadeOfView_Previews: PreviewProvider {
    static var previews: some View {
        WhatAmIMadeOfView()
    }
}
