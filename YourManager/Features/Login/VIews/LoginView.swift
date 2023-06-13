//
//  LoginView.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-13.
//

import SwiftUI

struct LoginView: View {
    @State private var showingSheet = false
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Image("your.manager.logo")
                .resizable()
                .frame(width:UIScreen.screenWidth, height: UIScreen.screenHeight/4 ,alignment: .top)
                .edgesIgnoringSafeArea(.top)
            LoginButtonWidget(loginType: LoginType.google)
            LoginButtonWidget(loginType: LoginType.apple)
            LoginButtonWidget(loginType: LoginType.mailAndPassword)
            Button("Create a new Account"){
                showingSheet.toggle()
            }.sheet(isPresented: $showingSheet) {
                Create_Account_Sheet()
            }
                
            
        }
    }
}
