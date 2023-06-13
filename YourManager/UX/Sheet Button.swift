//
//  Sheet Button.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-13.
//

import Foundation
import SwiftUI

struct SheetButton: ButtonStyle {
    var buttonColor: Color
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding(10)
            .background(buttonColor)
            .foregroundColor(.black)
            .clipShape(Rectangle())
            .cornerRadius(10)
            .font(.callout)
    }
}
