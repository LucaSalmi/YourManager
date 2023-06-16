//
//  HomePageView.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-14.
//

import SwiftUI

struct ContactListView: View {
    @Binding var presentSideMenu: Bool
    
    var body: some View {
        NavigationView {
            List {
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Button {
                        presentSideMenu.toggle()
                    } label: {
                        Image(systemName: "text.justify")
                    }
                }
                ToolbarItem(placement: .principal){
                    Text("Home Page")
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        print("filter")
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                    }
                }
                
            }.foregroundColor(.green)
        }
    }
}


