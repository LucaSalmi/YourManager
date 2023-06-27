//
//  MailAndPasswordLoginForm.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-14.
//

import SwiftUI

struct MailAndPasswordLoginForm: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: AuthenticationViewModel

    
    private func signInWithEmailPassword() {
        Task {
          if await viewModel.signInWithEmailPassword() == true {
            dismiss()
          }
        }
      }

    var body: some View {
        VStack{
            TextField("E-mail",text: $email).textFieldStyle(RegisterTextFieldStyle())
            SecureField("Password",text: $password).textFieldStyle(RegisterTextFieldStyle())
            HStack{
                Button("Login") {
                    if(email.isValidEmail()){
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
