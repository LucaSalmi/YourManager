//
//  ContactStatusBadge.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-19.
//

import SwiftUI

struct ContactStatusBadge: View {
    
    @State var currentStatus: ContactStatus
    //TODO(Luca) Use User's own list of statuses
    var allStatuses = ContactStatus.allCases
    
    
    var body: some View {
        HStack{
            Circle().fill(currentStatus.color).frame(width: 15, height: 15)
            Picker("", selection: $currentStatus) {
                ForEach(allStatuses, id: \.self){
                    Text($0.name)
                }
            }.pickerStyle(.menu)     .onReceive([self.currentStatus].publisher.first()) { (value) in
                //TODO(Luca) This will change the status on the specific Contact
                print(value)
        }
        }
        
        
        
    }
}
