//
//  Contact.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-19.
//

import Foundation

class Contact: Codable, Identifiable{
    var id: String
    var status: ContactStatus
    var contactName: String
    var contactPersonName: String
    var contactNotes: String
    var phoneNumbers: [String]
    var mailAdresses: [String]
    var postAdresses: [String]
    var websites: [String]
    
    init(
        id: String,
        status: ContactStatus,
        contactName: String,
        contactPersonName: String,
        contactNotes: String,
        phoneNumbers: [String],
        mailAdresses: [String],
        postAdresses: [String],
        websites: [String]
    ){
        self.id = id
        self.contactName = contactName
        self.status = status
        self.contactPersonName = contactPersonName
        self.contactNotes = contactNotes
        self.phoneNumbers = phoneNumbers
        self.mailAdresses = mailAdresses
        self.postAdresses = postAdresses
        self.websites = websites
    }
    
    
}
