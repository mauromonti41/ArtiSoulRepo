//
//  RegistrationTextFields.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 04/03/22.
//

import SwiftUI

struct RegistrationTextFields: View {
    
    @Binding var email : String
    @Binding var password : String
    
    var body: some View {
        
        VStack{
        
        Text("Email")
            .fontWeight(.semibold)
            .font(.system(size: 21))
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
    TextField("JohnAppleseed@icloud.com", text: $email)
            .textFieldStyle(TextFieldModel())
            .padding(.bottom,20)

        Text("Password")
            .fontWeight(.semibold)
            .font(.system(size: 21))
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
    SecureField("******", text: $password)
            .textFieldStyle(TextFieldModel())
        }
    }
}

//struct RegistrationTextFields_Previews: PreviewProvider {
//    static var previews: some View {
//        RegistrationTextFields(
//            email: "email", password: "password")
//    }
//}
