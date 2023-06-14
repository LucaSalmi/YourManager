//
//  HomePageView.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-14.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel
    var body: some View {
        Button("Logout") {
            viewModel.signOut()
        }
    }
}


