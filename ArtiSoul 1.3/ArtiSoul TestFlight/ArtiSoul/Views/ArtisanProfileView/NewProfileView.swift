//
//  ContentView.swift
//  ArtiSoulNewProfile
//
//  Created by Emanuele Cimmelli on 18/02/22.
//

import SwiftUI

struct NewProfileView: View {
    
    let alignment: Alignment = .center
    let width: CGFloat = 0.0
    let height: CGFloat = 0.0
    @EnvironmentObject var artisanViewModel : ArtisanViewModel
//    @State private var password: String = ""
//    @State private var user: String = ""
    @Binding var profileIsCreated : Bool
    @Binding var profileEditingAllowed : Bool
//    @Binding var name : String
//    @Binding var surname : String
//    @Binding var work : String
    @Binding var artisanAccessValues : AccessModel
//    @EnvironmentObject var artisanViewModel : ArtisanViewModel
    
    
    var body: some View {
        
//        NavigationView{
        
            VStack(){
            
                
                Text("Are you an artisan?")
                    .fontWeight(.regular)
                    .font(.system(size: 28))
                    .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.bottom, 32)
                  .padding(.leading,16)
                    
//                VStack(alignment: .leading){
                    Text("Sign In")
                        .fontWeight(.semibold)
                        .font(.system(size: 21))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,16)
                        .padding(.bottom,20)
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 383, height: 50.0)
                            .foregroundColor(Color.accentColor)
                        
                        Text("Sign in with Apple")
                            .fontWeight(.semibold)
                            .font(.system(size: 17))
                            .foregroundColor(Color.white)
                        
                        }
                    .padding(.bottom,43)
//                    }
                
                Text("Or choose a username and password")
                    .fontWeight(.medium)
                    .font(.system(size: 18))
                    .foregroundColor(Color.gray)
                    .padding(.bottom,27)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading,16)
//                VStack(alignment: .leading){
                    Text("Email")
                        .fontWeight(.semibold)
                        .font(.system(size: 21))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,16)
                        
                TextField("JohnAppleseed@icloud.com", text: $artisanAccessValues.email)
                        .textFieldStyle(TextFieldModel())
//                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
//                        .padding(.bottom,20)
                    
                
                    
//                VStack(alignment: .leading){
                    Text("Password")
                        .fontWeight(.semibold)
                        .font(.system(size: 21))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,16)
                SecureField("******", text: $artisanAccessValues.password)
                        .textFieldStyle(TextFieldModel())
//                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        .padding(.bottom,40)
//                    }
//                NavigationLink(destination: EditingProfileView(profileEditingAllowed: $profileEditingAllowed)){
                    Button("Register"){
//                        profileIsCreated = true
                        withAnimation{
                        profileEditingAllowed =  true
                        }
                    }
//                }
                .padding(.bottom,20)
//                NavigationLink(destination: EditedProfileView(artisan: <#ArtisanModel#>, profileEditingAllowed: $profileEditingAllowed)){
                    Button(" Or Login"){
                        profileIsCreated = true
                        profileEditingAllowed = false
                    }
//                }
                
                      

                
                
            }
//            .padding(.bottom,70)
//            .background(.red)
//                .padding()

            
            .navigationTitle("Profile")
//        }
    }
}


//struct NewProfileView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        
//        NewProfileView(profileIsCreated: , profileEditingAllowed: )
//        
//    }
//}
