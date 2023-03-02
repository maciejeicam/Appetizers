//
//  APError.swift
//  Appetizers
//
//  Created by Maciej Michalik on 02/03/2023.
//

import Foundation

enum APError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
