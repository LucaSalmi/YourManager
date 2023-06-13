//
//  TextInputStyle.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-13.
//

import Foundation
import SwiftUI

struct RegisterTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .textFieldStyle(.roundedBorder)
            .textInputAutocapitalization(.never)
            .autocorrectionDisabled()
    }
}
