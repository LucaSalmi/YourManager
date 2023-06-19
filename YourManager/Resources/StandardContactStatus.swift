//
//  StandardContactStatus.swift
//  YourManager
//
//  Created by Luca Salmi on 2023-06-19.
//

import Foundation

struct DefaultValues{
    
    public var standardContactStatus = [
            ContactStatus(statusName: "Booked", statusColorHex: "#33FF00"),
            ContactStatus(statusName: "Contacted", statusColorHex: "#0038FF"),
            ContactStatus(statusName: "To Recontact", statusColorHex: "#FFE500"),
            ContactStatus(statusName: "Closed", statusColorHex: "#FF0000")
        ]
    
    public var standardContactInfo = Contact(id: "", status: ContactStatus(statusName: "Booked", statusColorHex: "33FF00"), contactName: "Contact Name", contactPersonName: "Namn Namnsson", contactNotes: "kagkdffgafu huagfiavf vafivf hyva hyvfjavdavcjahcvjaf yvauvfuavcy  ycvahcviacv cyavcvaydfvdav yvauvcuaqvcwe.", phoneNumbers: ["012 345 67 89"], mailAdresses: ["mail@fakecontact.com"], postAdresses: ["Storagatan 33"], websites: ["business.com"])
}
