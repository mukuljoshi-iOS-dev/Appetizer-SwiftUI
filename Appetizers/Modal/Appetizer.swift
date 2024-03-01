//
//  Appetizer.swift
//  Appetizers
//
//  Created by Mukul Joshi on 09/01/24.
//

import Foundation

struct Appetizer: Decodable, Identifiable{
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}


struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}


struct MockData {
    static let sampleAppetizer = Appetizer(id: 001,
                                           name: "Test Appitizer",
                                           description: "It's yummy. Test Description",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 39,
                                           protein: 99,
                                           carbs: 19)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 001,
                                           name: "Order Item One",
                                           description: "It's yummy. Test Description",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 39,
                                           protein: 99,
                                           carbs: 19)
    
    static let orderItemTwo = Appetizer(id: 002,
                                           name: "Order Item two",
                                           description: "It's yummy. Test Description",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 39,
                                           protein: 99,
                                           carbs: 19)
    
    static let orderItemThree = Appetizer(id: 003,
                                           name: "Order Item three",
                                           description: "It's yummy. Test Description",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 39,
                                           protein: 99,
                                           carbs: 19)
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
