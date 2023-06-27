//
//  Create Account Sheet.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-13.
//

import SwiftUI

struct Create_Account_Sheet: View {
    @Environment(\.dismiss) var dismiss
    @State private var email: String = ""
    @State private var repeatedEmail: String = ""
    @State private var password: String = ""
    @State private var repeatedPassword: String = ""
    
    var body: some View {
        VStack(alignment: .center){
            
            Text("Create a new Account").font(.title).padding(.bottom)
            
            TextField("E-mail",text: $email).textFieldStyle(RegisterTextFieldStyle())
            TextField("Repeat E-mail",text: $repeatedEmail).textFieldStyle(RegisterTextFieldStyle())
            SecureField("Password",text: $password).textFieldStyle(RegisterTextFieldStyle())
            SecureField("Repeat Password",text: $repeatedPassword).textFieldStyle(RegisterTextFieldStyle())
            
            
            HStack{
                Button("Save") {
                    if(email.isValidEmail() && email == repeatedEmail){
                        print("valid")
                    }else{
                        print("invalid")
                    }
                    dismiss()
                }
                .buttonStyle(SheetButton(buttonColor: YourManagerColors.mainColor.appColors))
                
                Button("Cancel") {
                    dismiss()
                }
                .buttonStyle(SheetButton(buttonColor: .red))
            }.padding()
            
        }.padding()
    }
}
