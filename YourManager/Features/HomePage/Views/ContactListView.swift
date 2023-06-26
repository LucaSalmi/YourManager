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
                ContactCard(contact: DefaultValues().standardContactInfo).padding(10)
                ContactCard(contact: DefaultValues().standardContactInfo2).padding(10)

            }.toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Button {
                        presentSideMenu.toggle()
                    } label: {
                        Image(systemName: "sidebar.left").foregroundColor(.green)
                    }
                }
                ToolbarItem(placement: .principal){
                    Text("Home Page").foregroundColor(.green)
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        print("filter")
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease.circle").foregroundColor(.green)
                    }
                }
                
            }
        }
    }
}


