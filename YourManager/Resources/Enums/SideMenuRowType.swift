//
//  SideMenuRowType.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-16.
//

import Foundation

enum SideMenuRowType: Int, CaseIterable{
    case home = 0
    case newContact
    case calendar
    case settings
    
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .newContact:
            return "New Contact"
        case .calendar:
            return "Calendar"
        case .settings:
            return "Settings"
        }
    }
    
    var iconName: String{
        switch self {
        case .home:
            return "house.fill"
        case .newContact:
            return "person.fill.badge.plus"
        case .calendar:
            return "calendar"
        case .settings:
            return "gearshape.fill"
        }
    }
}
