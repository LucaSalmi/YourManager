//
//  ContactStatus.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-19.
//

import Foundation

class ContactStatus: Identifiable, Codable{
    
    var statusName: String
    var statusColorHex: String
    
    init(statusName: String, statusColorHex: String){
        self.statusName = statusName
        self.statusColorHex = statusColorHex
    }
}
