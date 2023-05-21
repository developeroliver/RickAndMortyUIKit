//
//  RMEndpoint.swift
//  RickAndMortyUIKit
//
//  Created by olivier geiger on 21/05/2023.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
