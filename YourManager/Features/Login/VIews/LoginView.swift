//
//  LoginView.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-13.
//

import SwiftUI

struct LoginView: View {
    @State private var showingRegisterSheet = false
    @State private var showingLoginSheet = false
    @EnvironmentObject var viewModel: AuthenticationViewModel
    @Environment(\.dismiss) var dismiss
    
    private func signInWithGoogle() {
        Task {
          if await viewModel.signInWithGoogle() == true {
            dismiss()
          }
        }
      }
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Image("your.manager.logo")
                .resizable()
                .frame(width:UIScreen.screenWidth, height: UIScreen.screenHeight/4 ,alignment: .top)
                .edgesIgnoringSafeArea(.top)
            LoginButtonWidget(loginType: LoginType.google) {
                signInWithGoogle()
            }
            LoginButtonWidget(loginType: LoginType.apple) {
                print("Pressed \(LoginType.apple)")
            }
            LoginButtonWidget(loginType: LoginType.mailAndPassword) {
                showingLoginSheet.toggle()
            }
            .sheet(isPresented: $showingLoginSheet) {
                MailAndPasswordLoginForm()
            }
            Button("Create a new Account"){
                showingRegisterSheet.toggle()
            }.sheet(isPresented: $showingRegisterSheet) {
                Create_Account_Sheet()
            }
                
            
        }
    }
}
