//
//  User.swift
//  UberRebuild
//
//  Created by Edward McGuiggan on 2/10/21.
//

import CoreLocation

enum AccountType: Int {
    case passenger
    case driver
}


struct User {
    let fullname: String
    let email: String
    var accountType: AccountType!
    var location: CLLocation?
    let uid: String
    
    init(uid: String, dictionary: [String: Any]) {
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.uid = uid
        
        if let index = dictionary["accountType"] as? Int {
            self.accountType = AccountType(rawValue: index)
        }
    }
}
