//
//  LoginButtonWidget.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-13.
//

import SwiftUI



struct LoginButtonWidget: View {
    var loginType: LoginType
    
    
    
    var body: some View {
        Button{
            print("Pressed \(loginType)")
        }label: {
            HStack{
                Image(loginType.getButtonIcon())
                    .resizable()
                    .frame(width: 20, height: 20)
                
                Text(loginType.getButtonText())
            }
            
        }
        .buttonBorderShape(.roundedRectangle)
        .buttonStyle(.borderedProminent)
        .tint(loginType.getButtonColor())
        .padding(3)
    }
}


