//
//  MainPageView.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-16.
//

import SwiftUI

struct MainPageView: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel
    @State var presentSideMenu = false
    @State var selectedSideMenuTab = 0
    
    var body: some View {
        ZStack{
            
            TabView(selection: $selectedSideMenuTab) {
                ContactListView(presentSideMenu: $presentSideMenu)
                    .tag(0)
                ContactListView(presentSideMenu: $presentSideMenu)
                    .tag(1)
                ContactListView(presentSideMenu: $presentSideMenu)
                    .tag(2)
                ContactListView(presentSideMenu: $presentSideMenu)
                    .tag(3)
            }
            
            SideMenu(isShowing: $presentSideMenu, content: AnyView(SideMenuView(selectedSideMenuTab: $selectedSideMenuTab, presentSideMenu: $presentSideMenu)))
        }
    }}


