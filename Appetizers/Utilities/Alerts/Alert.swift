//
//  Alert.swift
//  Appetizers
//
//  Created by Mukul Joshi on 12/01/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    var id = UUID()
    let title: Text
    let message: Text
    let dissmissButton: Alert.Button
    
}

struct AlertContext {
    
    //MARK: - Networking Alerts
    static let invalidData          = AlertItem(title: Text("Server Error"),
                                              message: Text("The data received from the server was invalid. Please contact support."),
                                              dissmissButton: .default(Text("OK")))
    
    static let invalidResponse      = AlertItem(title: Text("Server Error"),
                                              message: Text("Invalid Response from the server. Please try again or contact support."),
                                              dissmissButton: .default(Text("OK")))
    
    static let invalidURL           = AlertItem(title: Text("Server Error"),
                                              message: Text("There was an issue connecting to tht server."),
                                              dissmissButton: .default(Text("OK")))
    
    static let unableToComplete     = AlertItem(title: Text("Server Error"),
                                              message: Text("Unable to complete your request at this time. Please check you internet connection."),
                                              dissmissButton: .default(Text("OK")))
    
    //MARK: - Account Alerts
    static let invalidform     = AlertItem(title: Text("Invalid Form"),
                                              message: Text("Please ensure all fields in the form have been filled out."),
                                              dissmissButton: .default(Text("OK")))
    
    static let invalidEmail     = AlertItem(title: Text("Invalid Email"),
                                              message: Text("Please ensure your email is correct."),
                                              dissmissButton: .default(Text("OK")))
    
    static let userSavedSucess     = AlertItem(title: Text("Profile Saved"),
                                              message: Text("Your profile info was sucessfully saved."),
                                              dissmissButton: .default(Text("Done")))
    
    static let invalidUserData     = AlertItem(title: Text("Profile Error"),
                                              message: Text("Their was an error saving or retriving your profile."),
                                              dissmissButton: .default(Text("Ok")))
    
    static let genericError     = AlertItem(title: Text("Error"),
                                              message: Text("We can't complete your request at this moment."),
                                              dissmissButton: .default(Text("Ok")))
}
