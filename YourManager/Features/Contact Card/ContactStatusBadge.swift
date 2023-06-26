//
//  ContactStatusBadge.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-19.
//

import SwiftUI

struct ContactStatusBadge: View {
    
    var statuses: [ContactStatus]
    var currentStatusIndex: Int
    @State var selected: ContactStatus = DefaultValues().standardContactStatus[0]
    
    var body: some View {
        Picker("", selection: $selected) {
            ForEach(statuses, id: \.self){
                Text($0.statusName)
            }
        }.pickerStyle(.menu)
    }
}

struct ClosedStatusList: View{
    
    var status: ContactStatus
    
    var body: some View{
        HStack{
            Circle().foregroundColor((Color(hex: status.statusColorHex))).frame(width: 15, height: 15)
            Text(status.statusName)
        }
    }
}
