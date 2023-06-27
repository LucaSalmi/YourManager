//
//  YourManagerColors.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-27.
//

import SwiftUI

enum YourManagerColors{
    case mainColor
    case secundaryColor
}

extension YourManagerColors{
    var appColors: Color {
        switch(self){
        case .mainColor:
            return .green
        case .secundaryColor:
            return .gray
        }
    }
}
