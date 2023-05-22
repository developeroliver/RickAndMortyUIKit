//
//  RMLocation.swift
//  RickAndMortyUIKit
//
//  Created by olivier geiger on 21/05/2023.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
