//
//  CreateContactView.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-27.
//

import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct CreateContactView: View {
    // Manages the side bar menu, common to all views
    @Binding var presentSideMenu: Bool
    // Effects the tab we navigate to and from
    @Binding var selectedtab: Int
    
    @StateObject var viewModel = CreateContactViewModel()
    @State private var showingContactInformationSheet = false
    
    
    
    func getTextInputField(textlocation: Binding<String> ,placeholderTxt: String) -> some View{
        return FloatingLabelTextField(
            textlocation,
            placeholder: placeholderTxt
            
        )
        .selectedLineColor(.green)
        .selectedTextColor(.black)
        .selectedTitleColor(.green)
        .padding(.horizontal)
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 15){
                HStack(alignment: .top){
                    Spacer()
                    ContactStatusBadge(currentStatus: ContactStatus.booked).padding(.horizontal)
                }
                getTextInputField(textlocation: $viewModel.name, placeholderTxt: "Company")
                getTextInputField(textlocation: $viewModel.contactPerson, placeholderTxt: "Contact Person")
                HStack{
                    Button {
                        showingContactInformationSheet.toggle()
                    } label: {
                            Text("Add Contact Information").underline().font(.footnote)
                        }
                    .padding(.horizontal)
                    .sheet(isPresented: $showingContactInformationSheet) {
                        Text("Add Contact info")
                    }
                    
                    Spacer()
                }
                
                Spacer()
                
                VStack(alignment: .leading){
                    
                    Text("Notes").font(.title3).padding(.horizontal)
                    TextField("Notable things and facts about this client...", text: $viewModel.notes, axis: .vertical)
                        .lineLimit(5...)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal)
                }
                
                Spacer()
                
                Button {
                    print("save")
                    selectedtab = 0
                } label: {
                    Text("Save")
                }.buttonBorderShape(.roundedRectangle)
                    .buttonStyle(.borderedProminent)
                    .tint(.green)
                    .padding(3)
                
            }.toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Button {
                        presentSideMenu.toggle()
                    } label: {
                        Image(systemName: "sidebar.left").foregroundColor(.green)
                    }
                }
                ToolbarItem(placement: .principal){
                    Text("Create a New Contact").foregroundColor(.green)
                }
            }
        }
    }
}
