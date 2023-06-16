//
//  YourManagerApp.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-12.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct YourManagerApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var viewModel = AuthenticationViewModel()
    var body: some Scene {
        WindowGroup {
            if(viewModel.authenticationState == AuthenticationState.unauthenticated){
                LoginView().environmentObject(viewModel)
            }else{
                MainPageView().environmentObject(viewModel)
            }
            
        }
    }
}
