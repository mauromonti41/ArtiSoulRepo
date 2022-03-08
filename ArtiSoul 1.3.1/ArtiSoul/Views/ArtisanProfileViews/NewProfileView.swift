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
    
    let areYouArtisan : LocalizedStringKey = "text 22"
    let signIn : LocalizedStringKey = "text 23"
    let chooseUserPass : LocalizedStringKey = "text 25"
    let Register : LocalizedStringKey = "text 26"
    let Login : LocalizedStringKey = "text 27"
    let Profile : LocalizedStringKey = "text 12"
    
    var body: some View {
        
        GeometryReader{_ in
            VStack{
            
                
                Text(areYouArtisan)
                    .fontWeight(.regular)
                    .font(.system(size: 28))
                    .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.bottom, 32)
                  .padding(.leading,16)
                    

                    Text(signIn)
                        .fontWeight(.semibold)
                        .font(.system(size: 21))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,16)
                        .padding(.bottom,20)
                    
                    SignInWithAppleView()
                    .padding(.bottom,43)
//                    }
                
                Text(chooseUserPass)
                    .fontWeight(.medium)
                    .font(.system(size: 18))
                    .foregroundColor(Color.gray)
                    .padding(.bottom,27)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading,16)

                RegistrationTextFields(email: $artisanAccessValues.email, password: $artisanAccessValues.password)
                    .padding()
                    
                
                    Button(Register){

                        withAnimation{
                        profileEditingAllowed =  true
                        }
                    }

                .padding(.bottom,20)

                    Button(Login){
                        profileIsCreated = true
                        profileEditingAllowed = false
                    }

            
            }
        }
            .padding()
            .navigationTitle(Profile)
            .ignoresSafeArea(.keyboard, edges: .top)
        }
    }



