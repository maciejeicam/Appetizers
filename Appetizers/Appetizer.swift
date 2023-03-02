//
//  Appetizer.swift
//  Appetizers
//
//  Created by Maciej Michalik on 02/03/2023.
//

import Foundation

struct Appetizer: Decodable {      //zbior danych do pobrania (JSON) do tego jak chcemy zeby wygladalo
    let id: Int                     //dlatego Decodable
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
    
    static let sampleApetizer = Appetizer(id: 1,
                                          name: "Blackened Shrimp",
                                          description: "Seasoned shrimp from the depths of the Atlantic Ocean.",
                                          price: 6.99,
                                          imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg",
                                          calories: 450,
                                          protein: 4,
                                          carbs: 3)
    static let appetizers = [sampleApetizer, sampleApetizer, sampleApetizer, sampleApetizer]
}
