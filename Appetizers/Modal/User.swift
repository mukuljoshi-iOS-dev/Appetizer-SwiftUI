//
//  User.swift
//  Appetizers
//
//  Created by Mukul Joshi on 31/01/24.
//

import Foundation

struct User: Codable {
    var firstName: String   = ""
    var lastName: String    = ""
    var email: String       = ""
    var birthDate: Date     = Date()
    var extraNapkins        = false
    var frequentRefills     = false
}
