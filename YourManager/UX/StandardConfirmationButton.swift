//
//  StandardConfirmationButton.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-07-03.
//

import SwiftUI

struct StandardConfirmationButton: View {
    var buttonAction:  () -> Void
    var labelText: String
    
    var body: some View {
        Button {
            buttonAction()
        } label: {
            Text(labelText)
                .frame(maxWidth: .infinity)
        }.buttonBorderShape(.roundedRectangle)
            .buttonStyle(.borderedProminent)
            .tint(YourManagerColors.mainColor.appColors)
            .padding(15)
    }
}
