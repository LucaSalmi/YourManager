//
//  AddContactInfoSheetView.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-07-03.
//

import SwiftUI

struct AddContactInfoSheetView: View {
    @StateObject var viewModel: CreateContactViewModel
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing: 25){
            Spacer()
            TextInputWithFloatingLabel(textlocation: $viewModel.phoneNumber, placeholderTxt: "Phone Number")
            TextInputWithFloatingLabel(textlocation: $viewModel.eMailAdress, placeholderTxt: "E-mail")
            TextInputWithFloatingLabel(textlocation: $viewModel.postAdress, placeholderTxt: "Adress")
            Spacer()
            StandardConfirmationButton(buttonAction: {
                print("contact info saved")
                // TODO(Luca): Save info 
                dismiss()
            }, labelText: "Finish")

        }
    }
}
