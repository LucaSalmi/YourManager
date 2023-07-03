//
//  TextInputWithFloatingLabel.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-07-03.
//

import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct TextInputWithFloatingLabel: View {
    var textlocation: Binding<String>
    var placeholderTxt: String
    
    var body: some View {
        FloatingLabelTextField(
            textlocation,
            placeholder: placeholderTxt
        )
        .selectedLineColor(YourManagerColors.mainColor.appColors)
        .selectedTextColor(.black)
        .selectedTitleColor(YourManagerColors.mainColor.appColors)
        .padding(.horizontal)
    }
}


