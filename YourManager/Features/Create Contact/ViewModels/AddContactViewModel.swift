//
//  AddContactViewModel.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-27.
//

import Foundation

enum CreateContactState{
    case loading
    case success
    case error
}

class CreateContactViewModel: ObservableObject {
    
    @Published var name: String = ""
    @Published var contactPerson: String = ""
    @Published var notes: String = ""
    
}
