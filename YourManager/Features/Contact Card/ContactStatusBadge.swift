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
    @Binding var isOn: Bool
    
    var body: some View {
        Button(action: {
            withAnimation {
                isOn.toggle()
            }
        }, label: {
            if isOn {
                ZStack{
                    ClosedStatusList(statuses: statuses, currentStatusIndex: currentStatusIndex)
                    ContactStatusList(userStatusesList: statuses)
                }
            } else {
                ClosedStatusList(statuses: statuses, currentStatusIndex: currentStatusIndex)
            }
        }).cornerRadius(25)
            .font(Font.caption)
            .foregroundColor(.accentColor)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .buttonStyle(.bordered)
    }
}

struct ClosedStatusList: View{
    
    var statuses: [ContactStatus]
    var currentStatusIndex: Int
    
    var body: some View{
        HStack{
            Circle().foregroundColor((Color(hex: statuses[currentStatusIndex].statusColorHex))).frame(width: 15, height: 15)
            Text(statuses[currentStatusIndex].statusName)
            Image(systemName: "chevron.down")
        }
    }
}
