//
//  ContentView.swift
//  ArtiSoulNewProfile
//
//  Created by Emanuele Cimmelli on 18/02/22.
//
//
//import SwiftUI
//
//struct NewProfileView: View {
//    
//    let alignment: Alignment = .center
//    let width: CGFloat = 0.0
//    let height: CGFloat = 0.0
//    
//    
//    @Binding var profileIsCreated : Bool
//    @Binding var profileEditingAllowed : Bool
//    @Binding var artisanAccessValues : AccessModel
//    
//    var body: some View {
//        
//        NavigationView{
//        
//            VStack(alignment: .leading, spacing: 50){
//            
//                
//                Text("Are you an artisan?")
//                    .fontWeight(.regular)
//                    .font(.system(size: 28))
////                  .padding(.top, -80.0)
//                    
//                VStack(alignment: .leading){
//                    Text("Sign In")
//                        .fontWeight(.semibold)
//                        .font(.system(size: 21))
//                    
//                    ZStack{
//                        RoundedRectangle(cornerRadius: 8)
//                            .frame(width: 383, height: 50.0)
//                            .foregroundColor(Color.accentColor)
//                        
//                        Text("Sign in with Apple")
//                            .fontWeight(.semibold)
//                            .font(.system(size: 17))
//                            .foregroundColor(Color.white)
//                        
//                        }
//                    }
//                
//                Text("Or choose a username and password")
//                    .fontWeight(.medium)
//                    .font(.system(size: 18))
//                    .foregroundColor(Color.gray)
//                
//                VStack(alignment: .leading){
//                    Text("Email")
//                        .fontWeight(.semibold)
//                        .font(.system(size: 21))
//
//                        
//                    TextField("JohnAppleseed@icloud.com", text: $artisanAccessValues.email)
//                        .textFieldStyle(.roundedBorder)
//                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
//                    }
//                
//                    
//                VStack(alignment: .leading){
//                    Text("Password")
//                        .fontWeight(.semibold)
//                        .font(.system(size: 21))
//                    
//                    SecureField("******", text: $artisanAccessValues.password)
//                        .textFieldStyle(.roundedBorder)
//                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
//
//                    }
//
//                Spacer()
//                Button("Register"){
//                    profileEditingAllowed = true
//                }
//                Button("Or Login"){
//                    profileEditingAllowed = false
//                    profileIsCreated = true
//                }
//            }
//            .padding()
//
//            
//            .navigationTitle("Profile")
//
//        }
//    }
//}
//

//struct NewProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//
//            NewProfileView()
//
//    }
//}
