//
//  ContactStatus.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-19.
//

import Foundation
import SwiftUI

enum ContactStatus: String, CaseIterable, Identifiable, Codable {
    case booked, toContact, closed, contacted
    
    var id: Self { self }
    
    var name: String {
        switch self {
        case .booked: return "Booked"
        case .contacted: return "Contacted"
        case .toContact: return "To Recontact"
        case .closed: return "Closed"
        }
    }
    
    var color: Color {
        switch self {
        case .booked: return Color.green
        case .contacted: return Color.cyan
        case .toContact: return Color.gray
        case .closed: return Color.red
        }
    }
}
