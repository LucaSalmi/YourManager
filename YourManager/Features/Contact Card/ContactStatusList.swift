//
//  StatusList.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-19.
//

import SwiftUI

struct ContactStatusList: View {
    
    var userStatusesList: [ContactStatus]
    
    var body: some View{
        List{
                ForEach(userStatusesList){ status in
                    HStack{
                        Circle().tint(Color(hex: status.statusColorHex)).frame(width: 15, height: 15)
                        Text(status.statusName)
                    }
                }
        }
    }
}
