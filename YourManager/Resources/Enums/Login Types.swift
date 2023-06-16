//
//  Login Types.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-13.
//

import Foundation
import SwiftUI


public enum LoginType{
    case google, mailAndPassword, apple
}

extension LoginType{
    
    func getButtonText() -> String{
        switch self {
        case .google:
            return "Login with Google"
        case .mailAndPassword:
            return "Login with email"
        case .apple:
            return "Login with Apple"
        }
    }
    
    func getButtonColor() -> Color{
        switch self {
        case .google:
            return .red
        case .mailAndPassword:
            return .gray
        case .apple:
            return .black
        }
    }
    
    func getButtonIcon() -> String{
        switch self {
        case .google:
            return "google.icon"
        case .mailAndPassword:
            return "mail.fill"
        case .apple:
            return "apple.logo"
        }
    }
}

