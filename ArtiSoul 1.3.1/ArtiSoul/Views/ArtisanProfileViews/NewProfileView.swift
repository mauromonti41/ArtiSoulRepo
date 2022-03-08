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
        
        GeometryReader{_ in
            VStack{
            
                
                Text("Are you an artisan?")
                    .fontWeight(.regular)
                    .font(.system(size: 28))
                    .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.bottom, 32)
                  .padding(.leading,16)
                    

                    Text("Sign In")
                        .fontWeight(.semibold)
                        .font(.system(size: 21))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,16)
                        .padding(.bottom,20)
                    
                    SignInWithAppleView()
                    .padding(.bottom,43)
//                    }
                
                Text("Or choose a username and password")
                    .fontWeight(.medium)
                    .font(.system(size: 18))
                    .foregroundColor(Color.gray)
                    .padding(.bottom,27)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading,16)

                RegistrationTextFields(email: $artisanAccessValues.email, password: $artisanAccessValues.password)
                    .padding()
                    
                
                    Button("Register"){

                        withAnimation{
                        profileEditingAllowed =  true
                        }
                    }

                .padding(.bottom,20)

                    Button(" Or Login"){
                        profileIsCreated = true
                        profileEditingAllowed = false
                    }

            
            }
        }
            .padding()
            .navigationTitle("Profile")
            .ignoresSafeArea(.keyboard, edges: .top)
        }
    }



