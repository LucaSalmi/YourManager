//
//  User.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-14.
//

import Foundation

class AppUser: Codable, Identifiable {
    
    var id : String?
    var email : String = ""
    
    init(id: String, email: String) {
        self.id = id
        self.email = email
    }
}
