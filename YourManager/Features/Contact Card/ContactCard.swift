//
//  ContactCard.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-19.
//

import SwiftUI

struct ContactCard: View {
    
    var contact: Contact
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(contact.contactName)
                Spacer()
                ContactStatusBadge(statuses: DefaultValues().standardContactStatus, currentStatusIndex: 0)
            }
            Text(contact.phoneNumbers.first!)
            Text(contact.postAdresses.first!)
        }
    }
}
